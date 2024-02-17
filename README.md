# Git-for-Windows MSI installer

* Requires: WiX Toolset 3.11 (for MSI packaging)
* Requires: ImageMagick (for Icon conversions)

## License and Attributions

* [License](LICENSE) - Same license as Git, same license as Git Portable for Windows. https://git-scm.com/
* [Attributions](ATTRIBUTIONS) - Thanks to Git-for-Windows and the Git-SCM teams! https://gitforwindows.org/
* [WiX Toolset](http://opensource.org/licenses/ms-rl) - Thanks to the WiX Toolset team. https://github.com/wixtoolset

## Goal

* Have a pre-configured, standardized Microsoft-Admin-friendly distribution for latest Git-SCM releases on Windows.
* It should install per-user w/o privilege elevation.
* It should provide Start Menu links and links to Documentation.
* It should provide Explorer Integration.
* Default settings should match company requirements (e.g. HTTPS backend using Windows Secure Channels, NANO as editor etc.)

## Procedure

* `fetch.cmd` to collect all necessary files
* `prepare.cmd` to update Git Portable with the desired settings
* Then manually modify `bundle.wxs` to the desired settings (e.g. environment variables, icons etc.)
* Update `main.wxs` with all necessary settings
* Rename `bundle.wxs` to `bundle2.wxs`
* run `build.cmd` so that WiX Toolset can prepare the MSI

