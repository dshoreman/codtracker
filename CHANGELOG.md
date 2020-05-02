# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [Unreleased]
### Added
* New tasks for the Capture the Flag game mode and new Rust map
* Bit of an introduction and some tips at the top of the page
* Bottom of page is now padded so it's not right up against the window border
* Support for new categorised events with badge to show group by the title

### Fixed
* Events with an empty object as the only task no longer show unnamed task with 0/0


## [0.5.1] - 2020-04-20
### Added
* Current points obtained are now shown in target tooltips


## [0.5.0] - 2020-04-20
### Added
* New target progress and markers with reward tooltips for point-based events

### Changed
* Main container now uses full page width up to ~1180px


## [0.4.11] - 2020-04-20
### Added
* Week 4 tasks for Steel Legion Battlepass


## [0.4.10] - 2020-04-17
### Added
* Clan Ally event tasks
* New weekly public and ranked tasks


## [0.4.9] - 2020-04-16
### Added
* Tenacity Rewarded event tasks


## [0.4.8] - 2020-04-13
### Added
* Week 3 tasks for the Steel Legion event


## [0.4.7] - 2020-04-10
### Fixed
* Duplicate ID in Ranked MP tasks was preventing updates


## [0.4.6] - 2020-04-10
### Added
* Weekly Challenge tasks for 10-16/04


## [0.4.5] - 2020-04-09
### Added
* Easter Egg BR and Prop Hunt events


## [0.4.4] - 2020-04-03
### Added
* Week 2 tasks for Steel Legion event


## [0.4.3] - 2020-04-03
### Fixed
* Weekly Ranked challenge requires 30 kills, not 20


## [0.4.2] - 2020-04-03
### Added
* Weekly challenge events for 03/04/20


## [0.4.1] - 2020-04-01
### Fixed
* Duplicate ID in Steel Legion's "Suvive" and "Deal damage" tasks
* Lack of plural in Team Play 3 and 5 MP Match tasks


## [0.4.0] - 2020-04-01
### Added
* Events now have rewards shown alongside tasks
* New Season 5 "Steel Legion", 2v2 and Team Play events

### Changed
* Expired events are no longer displayed

### Fixed
* Disavowed date adjusted to reflect ending a day early
* Duplicate ID in Weekly tasks prevented individual tracking


## [0.3.2] - 2020-03-27
### Fixed
* Some Meltdown Map Challenge tasks had the wrong targets


## [0.3.1] - 2020-03-27
### Added
* New weekly, weekly ranked and Meltdown events

### Fixed
* Typo in a previous Trip Wire event task description


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


[Unreleased]: https://github.com/dshoreman/codtracker/compare/v0.5.1...develop
[0.5.1]: https://github.com/dshoreman/codtracker/compare/v0.5.0...v0.5.1
[0.5.0]: https://github.com/dshoreman/codtracker/compare/v0.4.11...v0.5.0
[0.4.11]: https://github.com/dshoreman/codtracker/compare/v0.4.10...v0.4.11
[0.4.10]: https://github.com/dshoreman/codtracker/compare/v0.4.9...v0.4.10
[0.4.9]: https://github.com/dshoreman/codtracker/compare/v0.4.8...v0.4.9
[0.4.8]: https://github.com/dshoreman/codtracker/compare/v0.4.7...v0.4.8
[0.4.7]: https://github.com/dshoreman/codtracker/compare/v0.4.6...v0.4.7
[0.4.6]: https://github.com/dshoreman/codtracker/compare/v0.4.5...v0.4.6
[0.4.5]: https://github.com/dshoreman/codtracker/compare/v0.4.4...v0.4.5
[0.4.4]: https://github.com/dshoreman/codtracker/compare/v0.4.3...v0.4.4
[0.4.3]: https://github.com/dshoreman/codtracker/compare/v0.4.2...v0.4.3
[0.4.2]: https://github.com/dshoreman/codtracker/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/dshoreman/codtracker/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/dshoreman/codtracker/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/dshoreman/codtracker/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/dshoreman/codtracker/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/dshoreman/codtracker/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/dshoreman/codtracker/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/dshoreman/codtracker/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/dshoreman/codtracker/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/dshoreman/codtracker/releases/tag/v0.1.0
