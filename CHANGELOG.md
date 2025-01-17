# v0.3.0 2016-07-01

### Added

* `:type?` predicate imported from dry-types (solnic)
* `Rule#curry` interface (solnic)

### Changed

* Predicates AST now includes information about args (names & possible values) (fran-worley + solnic)
* Predicates raise errors when they are called with invalid arity (fran-worley + solnic)
* Rules no longer evaluate input twice when building result objects (solnic)

[Compare v0.2.3...v0.3.0](https://github.com/dryrb/dry-logic/compare/v0.2.3...v0.3.0)

# v0.2.3 2016-05-11

### Added

* `not_eql?`, `includes?`, `excludes?` predicates (fran-worley)

### Changed

* Renamed `inclusion?` to `included_in?` and deprecated `inclusion?` (fran-worley)
* Renamed `exclusion?` to `excluded_from?` and deprecated `exclusion?` (fran-worley)

[Compare v0.2.2...v0.2.3](https://github.com/dryrb/dry-logic/compare/v0.2.2...v0.2.3)

# v0.2.2 2016-03-30

### Added

* `number?`, `odd?`, `even?` predicates (fran-worley)

[Compare v0.2.1...v0.2.2](https://github.com/dryrb/dry-logic/compare/v0.2.1...v0.2.2)

# v0.2.1 2016-03-20

### Fixed

* Result AST for `Rule::Each` correctly maps elements with eql inputs (solnic)

# v0.2.0 2016-03-11

### Changed

* Entire AST has been redefined (solnic)

[Compare v0.1.4...v0.2.0](https://github.com/dryrb/dry-logic/compare/v0.1.4...v0.2.0)

# v0.1.4 2016-01-27

### Added

* Support for hash-names in `Check` and `Result` which can properly resolve input
  from nested results (solnic)

[Compare v0.1.3...v0.1.4](https://github.com/dryrb/dry-logic/compare/v0.1.3...v0.1.4)

# v0.1.3 2016-01-27

### Added

* Support for resolving input from `Rule::Result` (solnic)

### Changed

* `Check` and `Result` carry original input(s) (solnic)

[Compare v0.1.2...v0.1.3](https://github.com/dryrb/dry-logic/compare/v0.1.2...v0.1.3)

# v0.1.2 2016-01-19

### Fixed

* `xor` returns wrapped results when used against another result-rule (solnic)

[Compare v0.1.1...v0.1.2](https://github.com/dryrb/dry-logic/compare/v0.1.1...v0.1.2)

# v0.1.1 2016-01-18

### Added

* `Rule::Attr` which can be applied to a data object with attr readers (SunnyMagadan)
* `Rule::Result` which can be applied to a result object (solnic)
* `true?` and `false?` predicates (solnic)

[Compare v0.1.0...v0.1.1](https://github.com/dryrb/dry-logic/compare/v0.1.0...v0.1.1)

# v0.1.0 2016-01-11

Code extracted from dry-validation 0.4.1
