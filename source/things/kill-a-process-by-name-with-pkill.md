---
date: 2013-06-11
slug: kill-a-process-by-name-with-pkill
tags: shell
title: Kill a process by name with pkill
---

Kill a process by name with `pkill`:

```
$ ps -A | grep "ruby"
12264 ttys002    0:03.57 ruby guard
12288 ttys002    0:05.61 ruby spork -p 8989
12289 ttys002    0:05.78 ruby spork cu -p 8990
95903 ttys002    0:03.64 ruby yard server -p 8808
13364 ttys007    0:00.00 grep ruby
$ pkill -9 -f ruby
$ ps -A | grep "ruby"
13835 ttys007    0:00.00 grep ruby
```

`-f` will match against all arguments, instead of just the process name.
