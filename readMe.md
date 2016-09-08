# Roku HTTP Binding for OpenHAB 2

This binding provides basic keypresses and simple automation for the Roku API.

## Functionality
* Autosearch
** Custom implementation of automated search for given terms
* Keypresses
** Accepts all key names defined in the Roku API
** Accepts ASCII characters (not space yet)
* Channel Install and Launch
** Accepts "launch [channel id]" and "install [channel id]"
* Sitemap
** Entry for Roku with current Channel indication
** Webview of command box for directly passing commands

## The binding is composed of
* 2 Item registers
* 2 Sitemap entries
* 1 XSLT transformation
* 1 static HTML page 

## Use
```
sendCommand (or similar) to Roku Item
	autosearch gene wilder					navigate to search and search "gene wilder"
	home									presses Home key
	launch [channel id] 					launches channel by id
in Sitemap
	Text item=Roku_active_app label="Roku - [%s]"
											shows active channel
	Webviewurl="http://OpenHABIP:8080/static/inputroku.html" height=3
											creates command box which will sendCommand() to Roku 
```

## Notes
IP addresses for OpenHab and Roku must be entered manually in each configuration file
Handles spaces but no special characters
Thread::sleep is used to wait for the Roku interface to catch up - if you have faster or slower model than Roku 2 (original), you should test changing these
Webview command box compatability
* BasicUI/Windows							compatible
* BasicUI/Android							compatible
* HABDroid/Android							incompatible (HABDroid closes keyboard)
* The rest									unknown