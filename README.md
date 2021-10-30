# Yosys lint plugin for micro editor

Plugin for checking the syntax of the **Verilog** language. Based on **yosys** or **apio yosys**.

First of all, it is checked whether yosys is installed, and only later apio yosys. That is, the priority is given to the native yosys.

## Installation

To install the plugin in `micro editor`, add to the configuration file:

~~~bash
micro ~/.config/micro/settings.json
~~~

~~~json
"pluginrepos": ["https://raw.githubusercontent.com/MuratovAS/micro-yosyslint/main/repo.json"],
~~~

You may need to set the right to `apioYosys.sh`.

~~~bash
chmod 775 ~/.config/micro/plug/yosyslint/apioYosys.sh
~~~

Installing the plugin in micro editor

~~~bash
micro -plugin install yosyslint
~~~

## Known bugs

- The plugin is currently checking for the existence of apio, but will not check if the yosys component in apio is installed
- The plugin reports an ERROR in the code, but does not report a WARNING.
