Bash ToolKit

## Overview

configuraion and tools for developers in Bash for efficiency.

## Features

1. Make it easier to get comfortable in Bash, such as "to ignore .svn directory for 'grep'"
1. Support console colorize, like svn,gcc,make and diff
1. Support z, Tracks your most used directories, based on 'frecency'
1. Support bashmarks, Directory bookmarks for the shell
1. Support ack, better than "grep"
1. Support dynamic motd(/etc/motd)
1. Platform self-adapting, load difference config in difference system automatically, like Mac, Linux, etc
1. Username self-adapting, load difference config for difference user automatically
1. Support chinese character friendly for the shell in Mac

## Installation

1. method 1

* $ git clone git://github.com/chzealot/bash-toolkit.git
* $ cd bash-toolkit && make install
* append the follow code snippets into ~/.bashrc or "~/.bash_profile"

```bash
if [ -f ~/.bash.d/bashrc ]; then
    . ~/.bash.d/bashrc
fi
```

1. method 2

* $ git clone git://github.com/chzealot/bash-toolkit.git
* copy .bash.d and .local into ~/
* append the follow code snippets into ~/.bashrc or "~/.bash_profile"

```bash
if [ -f ~/.bash.d/bashrc ]; then
    . ~/.bash.d/bashrc
fi
```


## Copyright

1. z

* https://github.com/rupa/z
* Copyright (c) 2009 rupa deadwyler under the WTFPL license

1. colorsvn

* http://colorsvn.tigris.org/
* Copyright 2007 Valerij Klein <vklein@console-colors.de> under the GNU General Public License
* Copyright 2002 Neil Stevens <neil@qualityassistant.com> under the GNU General Public License
* Copyright 1999 Jamie Moyers <jmoyers@geeks.com> under the GNU General Public License

1. colorgcc

* http://schlueters.de/colorgcc.html
* Copyright 1999 Jamie Moyers <jmoyers@geeks.com> under the GNU Public License

1. colordiff

* http://colordiff.sourceforge.net/
* Copyright (C) 2002-2009 Dave Ewart (davee@sungate.co.uk) under the GNU General Public License

1. colormake

* http://bre.klaki.net/programs/colormake/
* Copyright: (C) 1999, Bjarni R. Einarsson <bre@netverjar.is> under the GNU General Public License

1. bashmarks

* https://github.com/huyng/bashmarks
* Copyright (c) 2010, Huy Nguyen, http://www.huyng.com, All rights reserved.

1. ack

* http://betterthangrep.com
* Copyright 2005-2011 Andy Lester under the terms of the Artistic License v2.0

1. termcolor.py

* http://pypi.python.org/pypi/termcolor
* Copyright (c) 2008-2011 Volvox Development Team under the MIT License

1. Thanks

Thanks to the above authors for their great works!

Some code snippets were taken from the internet, thanks to Google and the authors.

