module Dry
  module Logic
    class Rule::Composite < Rule
      include Dry::Equalizer(:left, :right)

      attr_reader :left, :right

      def initialize(left, right)
        @left = left
        @right = right
      end

      def arity
        -1
      end

      def input
        Predicate::Undefined
      end

      def curry(*args)
        self.class.new(left.curry(*args), right.curry(*args))
      end

      def name
        :"#{left.name}_#{type}_#{right.name}"
      end

      def to_ast
        [type, [left.to_ast, right.to_ast]]
      end
      alias_method :to_a, :to_ast
    end

    class Rule::Implication < Rule::Composite
      def call(input)
        if left.(input).success?
          right.(input)
        else
          Logic.Result(true, left, input)
        end
      end

      def type
        :implication
      end
    end

    class Rule::Conjunction < Rule::Composite
      def call(input)
        result = left.(input)

        if result.success?
          right.(input)
        else
          result
        end
      end

      def type
        :and
      end
    end

    class Rule::Disjunction < Rule::Composite
      def call(input)
        result = left.(input)

        if result.success?
          result
        else
          right.(input)
        end
      end

      def type
        :or
      end
    end

    class Rule::ExclusiveDisjunction < Rule::Composite
      def call(input)
        Logic.Result(left.(input).success? ^ right.(input).success?, self, input)
      end

      def type
        :xor
      end
    end
  end
end
