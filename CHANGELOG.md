# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [Unreleased]


## [0.3.0] - 2020-03-23
### Added
* Completed tasks can now be hidden by toggling the top-right checkbox
* Progress input text will now be automatically selected when shown

### Changed
* Clicking anywhere on progress bars toggles the input, not just the value

### Fixed
* "Kill 5 Enemies in BR Matches" now reflects actual target of 6
* Progress can no longer be set outside the min-max range
* Event headers no longer wrap completed/reset on mobile devices


## [0.2.1] - 2020-03-23
### Fixed
* A bug in the event data was causing an empty list item to be displayed


## [0.2.0] - 2020-03-23
### Added
* Week 5 Disavowed events and some extra ones missing from the source markdown

### Fixed
* Many task descriptions have been updated to match the in-game text


## [0.1.1] - 2020-03-22
### Added
* Build script for GitHub Pages. That's it.


## [0.1.0] - 2020-03-22
### Added
* Event list with relative time until the end date
* Collapsible tasks with basic progress tracking via Local Storage
  * Based on an incomplete markdown file, some tasks may be missing
* Overall event progress shown above the task list with count in header
* Ability to reset task progress for any given event
* Anything else that isn't in a later release


[Unreleased]: https://github.com/dshoreman/codtracker/compare/v0.3.0...develop
[0.3.0]: https://github.com/dshoreman/codtracker/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/dshoreman/codtracker/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/dshoreman/codtracker/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/dshoreman/codtracker/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/dshoreman/codtracker/releases/tag/v0.1.0
