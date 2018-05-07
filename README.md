# Tyr

![Alt text](https://github.com/aaronprisk/tyr/blob/master/img/tyr-icon.png "Tyr Icon")

![Alt text](https://github.com/aaronprisk/tyr/blob/master/img/tyr.png "Tyr GUI")

### Introduction
Tyr is a fork of [Fedy](https://github.com/fedy/fedy), a tool that lets you install popular FOSS and proprietary software that Ubuntu may not ship with just a few clicks.

### License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [gnu.org/licenses](http://www.gnu.org/licenses/).

Tyr - Copyright (C) [Aaron Prisk](mailto:aaronprisk@gmail.com)

Fedy - Copyright (C) [Satyajit Sahoo](mailto:satyajit.happy@gmail.com)

### Dependencies

Tyr relies on `GTK+3` and `GJS` for it's UI layer.

The included plugins rely on the following packages,
* `wget`
* `snapd`
* `lxd`

### Installation

To install Tyr from source:

```
$ git clone https://github.com/aaronprisk/tyr.git
```
```
$ cd tyr
```
```
$ sudo make install
```

### Usage

After installation, search for `tyr` in the menu/overview or type `tyr` in the terminal.

### Plugin structure

Plugins can be placed under `~/.local/share/tyr/plugins/`, or the system plugins directory.

Each plugin is a directory with the suffix `.plugin`, which consist of a JSON formatted metadata file. The metadata file contains information about the plugin and describes how `tyr` should run the tasks.

The plugins can run any command or scripts (`bash`, `python` etc.). In addtion to the system commands, `tyr` provides an additional command, `run-as-root` to allow running commands (e.g.- `run-as-root touch /some/file/somewhere`) or scripts (e.g.- `run-as-root -s do-stuff.sh`) as root.

Have a look at the existing plugins to know more about how to write plugins for `tyr`.

### Source code

You can get the latest source code from the [github page](https://github.com/aaronprisk/tyr).

`git clone https://github.com/aaronprisk/tyr`

### Bugs and feature requests

Please submit bugs and feature requests [here](https://github.com/aaronprisk/tyr/issues). 

Pull requests are always welcome.
