[![Build](https://github.com/uroesch/PlinkProxyPortable/workflows/build-package/badge.svg)](https://github.com/uroesch/PlinkProxyPortable/actions?query=workflow%3Abuild-package)
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/uroesch/PlinkProxyPortable?include_prereleases)](https://github.com/uroesch/PlinkProxyPortable/releases)
[![Runs on](https://img.shields.io/badge/runs%20on-Win64%20%26%20Win32-blue)](#runtime-dependencies)
![GitHub All Releases](https://img.shields.io/github/downloads/uroesch/PlinkProxyPortable/total)

# PlinkProxy Portable for PortableApps.com

<img src="App/AppInfo/appicon_128.png" align=left>

[PlinkProxy](https://github.com/uroesch/PlinkProxy/) is a small wrapper and INI 
configuration file around the plink command from the Putty suite of tools. It is 
meant to dig ssh tunnels and create socks proxies into various networks to cut down
on excessive jump host hoping.

It was conceived in a corporate environment with many dispersed environments which 
were not directly accessible from the desktop. But the resources to be managed be 
it databases, middleware service and web services to name but a few, required graphical 
access to these resources.

PlinkProxy has been successfully used with FoxyProxy, DBeaver, WinSCP and FreeRDP 
over SOCKS5 and LDAP Admin, Apache Directory Studio over local SSH tunnel.

## Runtime dependencies
* 32-bit or 64-bit version of Windows Vista or greater.

## Support matrix

| OS              | 32-bit             | 64-bit              | 
|-----------------|:------------------:|:-------------------:|
| Windows XP      | ![nd][nd]          | ![nd][nd]           | 
| Windows Vista   | ![ps][ps]          | ![ps][ps]           | 
| Windows 7       | ![ps][ps]          | ![ps][ps]           |  
| Windows 8       | ![ps][ps]          | ![ps][ps]           |  
| Windows 10      | ![fs][fs]          | ![fs][fs]           |

Legend: ![ns][ns] not supported;  ![nd][nd] no data; ![ps][ps] supported but not verified; ![fs][fs] verified;`

## Status 
This PortableApps project is in beta stage. 

## Todo
- [ ] Documentation

## Build

### Prerequisites

* [PortableApps.com Launcher](https://portableapps.com/apps/development/portableapps.com_launcher)
* [PortableApps.com Installer](https://portableapps.com/apps/development/portableapps.com_installer)
* [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7)
* [Wine (Linux / MacOS only)](https://www.winehq.org/)

### Build

To build the installer run the following command in the root of the git repository.

```
powershell Other/Update/Update.ps1
```

[nd]: Other/Icons/no_data.svg
[ns]: Other/Icons/no_support.svg
[ps]: Other/Icons/probably_supported.svg
[fs]: Other/Icons/full_support.svg
