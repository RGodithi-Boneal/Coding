# Workstation Setup (Windows)
***

## Applications


App Name | Option 1 | Option A
--- | --- | ---
**Classic Shell** | [Download (mirror-1)](https://www.softpedia.com/get/Desktop-Enhancements/Shell-Replacements/Classic-Shell.shtml) | [Download (mirror-2)](https://www.fosshub.com/Classic-Shell.html)
**Effective File Search (EFS)** | [Download (mirror-1)](https://www.softpedia.com/get/System/File-Management/Effective-File-Search.shtml#download) | [Download (mirror-2)](https://effective-file-search.en.lo4d.com/download)
**Git** <sub>*Git SCM*</sub>  | [Download (source)](https://git-scm.com/downloads) |
**Git** <sub>*GitHub Desktop*</sub>  | [Download (source)](https://desktop.github.com) |
**Git** <sub>*Tortoise Git*</sub> | [Download (source)](https://tortoisegit.org/download) |
**MobaXterm** | [Download (source)](https://mobaxterm.mobatek.net/download-home-edition.html) |
**Postman** | [Download (source)](https://www.getpostman.com/apps) |
**Splashtop** | [Download (source)](https://www.splashtop.com/downloads) |
**Visual Studio Code (VS Code)** | [Download (source)](https://code.visualstudio.com/download) |


***

## Applications <sub> Non-HTTPS Sources :(</sub>

App Name | Option 1 | Option A
--- | --- | ---
**AirParrot** | [Download (mirror)](http://www.airsquirrels.com/airparrot/download/) |


***


## Environment
***
### Taskbar (Bottom Bar)
##### Unpin Edge, Unpin MS-Store, Hide Cortana, Hide People, Hide Ink, Hide Task-View Button
***
### Notifications (Bottom Right)
##### Right Click ##### Don't show number of new notifications
***
### Put Recycle-Bin on Start-Menu, Remove from Desktop
##### Drag & drop the Recycle Bin from the Desktop into the Start Menu -> Right-click & rename the new shortcut from "Recycle Bin - Shortcut" to "Recycle Bin"
##### Start Menu -> type "desktop icon" -> Select "Themes and Related Settings" -> On the right, select "desktop icon settings" -> uncheck "Recycle Bin" -> Hit "Ok"
***
### Show Hidden Files/Folders, Show File Extensions
##### Start Menu -> type "hidd" -> select "Show hidden files and folders"
###### Enable "Show hidden files and folders
###### Disable "Hide empty drives"
###### Disable "Hide extensions for known file types"
###### Enable "Show libraries" (bottom)
##### Select tab "General" (top)
###### Disable "Show recently used files in Quick Access" (bottom)
###### Disable "Show frequently used folders in Quick Access" (bottom)
***
### Log-into Microsoft Account (personal) to perform ongoing syncs of settings (unless you have a GPO from Office365 Work/School account locking it down)
##### Start Menu -> type "sync" -> select "Sync your settings" -> turn on "Sync settings"
***
### Turn off Notifications
##### Start Menu -> type "notif" -> select "Notifications & action settings" -> disable everything on the first page
***
### Change Power Settings
##### Start Menu -> type "power" -> select "Power & sleep"
##### set "Screen" to turn off after 30 min/30 min
##### set "Sleep" on battery to 1 hour / Never for plugged-in
##### click "additional power settings" (right side) -> "change plan settings" -> "change advanced power settings"
###### "Hard disk" -> "Turn off hard disk after" to 0/0 (Never/Never)
###### "Sleep" -> "Hibernate after" -> 0/0 (Never/Never)
###### "Graphics" -> "Plugged in" -> "Maximum Performance"
###### "Power buttons and lid" -> "lid close action" -> "do nothing" -> power/sleep button -> "sleep"
###### "Processor power management" -> "Maximum processor state" -> 99% / 99% (note: intentionally disabling hyperthreading)
###### select "Ok" 
***
### Remove Recent Items
##### Start Menu -> type "recent" -> select "Show recently opened items in Jump Lists on Start or on the taskbar" -> disable everything on the first page
***
### Enable ClearType
##### Start Menu -> type "clear" -> select "Adjust ClearType text" -> Enable ClearType and click next through all the screens until complete
***

## Shortcuts
***
#### Pinned Items, Taskbar (Win10)
###### Path:  "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
***
#### Pinned-Items, Classic Shell (Start-Menu App)
###### Path:  "%USERPROFILE%\AppData\Roaming\ClassicShell\Pinned"
***
#### Startup Items (All Users)
###### Path:  "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\StartUp"
***
#### Startup Items (My User)
###### Path:  "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
***