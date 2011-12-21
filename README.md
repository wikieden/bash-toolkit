Bash ToolKit - Bash工具箱

English edition: https://github.com/chzealot/bash-toolkit/blob/master/README.en.md

## 概述

提高Bash使用效率的配置文件和工具

## 特点

1. Bash使用更加方便，例如grep命令带颜色、忽略.svn目录
1. 常用命令支持终端颜色，例如svn、gcc、make和diff
1. 支持z工具，记录并自动在目录间跳转，基于使用频率(z foobar, z foo, etc.)
1. 支持bashmarks，设置目录书签，跳转到书签对应的目录(s设置,g跳转,l列出书签列表)
1. 支持ack工具，类似grep但更好用，更强大
1. 支持动态motd，自定义登陆shell时欢迎消息(/etc/motd为静态文本信息)
1. 平台自适应，自动加载系统对应的特定配置，例如Mac、Linux等
1. 用户名自适应，自动根据用户名加载对应配置
1. Mac下优化，例如中文显示、Mac中特殊路径

## 安装

1. 方法1: 使用make令自动安装

    * $ git clone git://github.com/chzealot/bash-toolkit.git
    * $ cd bash-toolkit && make install
    * 将以下容添加到~/.bashrc 或 ~/.bash_profile末尾

```bash
if [ -f ~/.bash.d/bashrc ]; then
    . ~/.bash.d/bashrc
fi
```

1. 方法2: 手动拷贝文件

    * $ git clone git://github.com/chzealot/bash-toolkit.git
    * 复制.bash.d 和 .local 目录到 ~/
    * 将以下容添加到~/.bashrc 或 ~/.bash_profile末尾

```bash
if [ -f ~/.bash.d/bashrc ]; then
    . ~/.bash.d/bashrc
fi
```


## 版权

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

1. 致谢

   非常感谢以上作者的努力工作！

   部分代码片段来自网上，来源已经不清楚，一并致谢！

   感谢Google，虽然这个公司似乎已经中了微软病毒。


## TODO List

1. 添加.inputrc
1. 添加各部分详细说明
