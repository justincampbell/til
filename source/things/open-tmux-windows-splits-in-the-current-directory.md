---
date: 2014-10-14
slug: open-tmux-windows-splits-in-the-current-directory
tags: shell,tmux
title: Open tmux windows/splits in the current directory
---

Tmux 1.9 [removed the ability](http://unix.stackexchange.com/questions/12032/create-new-window-with-current-directory-in-tmux) to default a new window/pane in the current directory, but it also added a `-c` argument to pass the current directory to the relevant commands. Override the following keybindings in your `.tmux.conf` to restore the old behavior:

```
bind c new-window -c "#{pane_current_path}"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
```

Learned while pairing with @jearvon.
