---
date: 2013-11-01
slug: zoomwin-for-vim
title: ZoomWin for Vim
---

[ZoomWin for Vim](https://github.com/vim-scripts/ZoomWin) allows you to zoom a window to fullscreen and then back again.

![ZoomWin demo](http://f.cl.ly/items/2F0I1V0V3W3d3u0H042p/ZoomWin.gif)

Add a mapping for `Ctrl`+`w`,`z` to your Vim config for a similar mapping to tmux:

```viml
" Zoom
nmap <C-W>z <Plug>ZoomWin
```

via @nlsmith and the [Daily Vim Devotional](http://dailyvim.tumblr.com)
