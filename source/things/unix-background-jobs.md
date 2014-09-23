---
date: 2013-06-10
slug: unix-background-jobs
tags: shell
title: Unix Background Jobs
---

# Unix Background Jobs

You can execute a command in the background by putting an ampersand at the end of the line:

```sh
$ sleep 60 &
[1] 10075
Running
```

See the currently running jobs with `jobs`:

```sh
$ jobs
[1]+  Running                 sleep 60 &
```

Foreground the most recent job with `fg`, or foreground that specific job with `fg %1`:

```sh
$ fg %1
sleep 60
```

You can also pause/stop currently running commands with `Ctrl`-`Z`:

```sh
^Z
[1]+  Stopped                 sleep 60
```

And then tell that command to continue running in the background with `bg`:

```sh
$ bg
[1]+ sleep 60 &
```

Learned from @sethvargo and @ivey.
