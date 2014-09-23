---
date: 2012-10-23
slug: grab-the-last-argument-from-the-last-command-in-bash-with-esc-period
tags: shell
title: Grab the last argument from the last command in bash with Esc+.
---

Grab the last argument from the last command in bash with `Esc`+`.`:

```sh
$ cat file.txt
$ vim <Esc-.>
$ vim file.txt
```

from @aaronfeng, who also prefers to map `Esc` to left `Alt` in [iTerm2](http://www.iterm2.com).
