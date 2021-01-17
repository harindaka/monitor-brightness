# monitor-brightness

Inspire from [code](https://github.com/udifuchs/icc-brightness) by udifuchs.

For monitor brightness (e.g. OLED) that Ubuntu system can't control.

## Build

The build requires `xrandr` package:

```shell
$ sudo apt-get update
$ sudo apt-get install x11-xserver-utils
```

---

## Installation

### Auto Start Install

If you want to install to auto-start when logging-in to the Gnome, run:

```shell
$ sudo make
```

It will auto select one monitor that is connected to install.

If you want to choise monitor to auto start , open `Makefile` type your monitor-name on `Monitor` variable.

It will start it on your next logging-in. You can control by your brightness key or other method that can control **backlight** on the display.

### Uninstall

```shell
$ make uninstall
```

---

### Run Tool

If you only want to run the tool, run:

```shell
$ make monitor-brightness
$ ./monitor-brightness [monitor_name]
```

#### NOTE

You need to find your `monitor_name`, use:

```shell
$ xrandr | grep " connected " | awk '{ print$1 }'
```

### Remove Tool

```shell
$ make clean
```
