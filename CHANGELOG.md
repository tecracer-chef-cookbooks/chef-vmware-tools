# Changelog

## [3.0.1] - 2024-03-22

* Removed dependency on yum and apt, they're not required.
* Added version into the Windows package resource, to stop repeated installations.

## [3.0.0] - 2020-05-06

* update minimum required chef version to 15.0 (BREAKING CHANGE)
* update metadata.rb with new contents
* update attributes + recipe files with style fixes
* update changelog, contributing, readme and testing
* add GitHub templates for bugs and pull requests
* add GitHub Actions for linting and kitchen test
* add Codeowners
* add kitchen configs for ec2, dokken, vra
* rename .kitchen files to kitchen
* remove .ruby-version

## [2.1.0] - 2018-05-21

* Bumped version of windows tools

## [2.0.0] - 2018-04-23

* First pass at the windows rebooting.

## [1.1.0] - 2018-02-06

* Added a flag to change to update always, instead of just installing.

## [1.0.1] - 2018-02-06

* Added always be updating

## [1.0.0] - 2018-02-05

* Updated cookbook to open-vm-tools
* Updated for both Debian and RPM based distros
* Added Windows support
* Added tests and test-kitchen support
