---
date: 2014-10-10
slug: add-colors-to-ls-output
tags: shell
title: Add colors to ls output
---

`ls` supports color coding your files/directories/symlinks. Set the `CLICOLOR` environment variable to enable:

![ls screenshot](http://f.cl.ly/items/2d3J2Q3Q0h1P0T24192z/Screen%20Shot%202014-10-09%20at%205.07.03%20PM.png)

You can customize the color by setting the `LSCOLORS` environment variable:

![ls color screenshot](http://f.cl.ly/items/3L2Y12163i3v180l0M00/Screen%20Shot%202014-10-09%20at%205.11.56%20PM.png)

(On non-BSD Bash, the environment variable is `LS_COLORS`, and has a different syntax)

You can [search for lscolors](https://www.google.com/search?q=lscolors) to find color schemes, or use an [LSCOLORS Generator](http://geoff.greer.fm/lscolors/).

Store your preferred settings in your profile:

```bash
export CLICOLOR=true
export LSCOLORS=Gxfxcxdxbxegedabagacad
```

Learned while pairing with @jearvon.
