# Yosys lint plugin for micro editor

Plugin for checking the syntax of the **Verilog** language. Based on **yosys**.

Tested version: Micro 2.0.10; Yosys 2019.12.11


## Installation

This plugin for work requires `Yosys`, install it in your system.

To install the plugin in `micro editor`, add to the configuration file:

~~~bash
micro ~/.config/micro/settings.json
~~~

~~~json
"pluginrepos": ["https://raw.githubusercontent.com/MuratovAS/micro-yosyslint/main/repo.json"],
~~~

Installing the plugin in micro editor

~~~bash
micro -plugin install yosyslint
~~~

## Known bugs

- The plugin reports an ERROR in the code, but does not report a WARNING.
