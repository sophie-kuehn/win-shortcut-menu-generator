## Windows Shortcut Menu Generator

This is a quick and dirty batch script to automatically build a shortcut directory for a collection of portable apps.

## Explanation and Howto

- copy **settings.cfg.dist** to **settings.cfg** and edit it
- all sub-directories of **appDir** will be scanned for **taskMenu.cfg** files
- the **taskMenu.cfg** should contain one or more lines of link definitions "name to display:relative\path\executable.exe"
- all links will be generated in the **menuDir**
- you may add the **menuDir** now in your task bar and trigger the script on demand

## Acknowledgment

This contains a copy of the Nirsoft nircmd app (https://www.nirsoft.net/utils/nircmd.html)

## Copyright & License

Copyright (c) Sophie Kühn

This application is made available under the GNU General Public License v3.0.  
Please see the [LICENSE](LICENSE) file for further details.
