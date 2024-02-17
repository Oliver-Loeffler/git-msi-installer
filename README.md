# Git-for-Windows MSI installer

* Requires: WiX Toolset 3.11 (for MSI packaging)
* Requires: ImageMagick (for Icon conversions)

## MSI Installer?

Well, there is something in works by Git-for-Windows but progress seem to have stalled. Have a look at the projects [FAQ](https://github.com/git-for-windows/git/wiki/FAQ#is-there-an-msi-for-installation-via-group-policy).

## License and Attributions

* [License](LICENSE) - Same license as Git, same license as Git Portable for Windows. https://git-scm.com/
* [Attributions](ATTRIBUTIONS) - Thanks to Git-for-Windows and the Git-SCM teams! https://gitforwindows.org/
* [Microsoft Reciprocal License (MS-RL)](http://opensource.org/licenses/ms-rl) - Thanks to the WiX Toolset team. [WiX Toolset](https://github.com/wixtoolset)

## Goal

* Have a pre-configured, standardized Microsoft-Admin-friendly distribution for latest Git-SCM releases on Windows.
* It should install per-user w/o privilege elevation.
* It should provide Start Menu links and links to Documentation.
* It should provide Explorer Integration.
* Default settings should match company requirements (e.g. HTTPS backend using Windows Secure Channels, NANO as editor etc.)
* Basic `gitconfig` should be created during the installation process (its quite nice that `gitconfig` somehow follows the `ini`-file shema.

## Procedure

* `fetch.cmd` to collect all necessary files
* `prepare.cmd` to update Git Portable with the desired settings
* Then manually modify `bundle.wxs` to the desired settings (e.g. environment variables, icons etc.)
* Update `main.wxs` with all necessary settings
* run `build.cmd` so that WiX Toolset can prepare the MSI

Manual adjustments (beside version numbers) to `bundle.wxs` and `main.wxs` are no longer needed. All icons, links and environment variable settings are now declared in `main.wxs`.
Hence one can safely execute `heat` on the source directory to harvest all files.
