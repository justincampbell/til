---
date: 2014-09-29
slug: lock-os-x-from-the-command-line-tmux
tags: shell,tmux
title: Lock OS X from the command line/tmux
---

The following command will lock your Mac, forcing you to enter a password to unlock it:

```sh
/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
```

Create a Bash alias:

```sh
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
```

Add a tmux keybinding for `Control`+`a`,`l`:

```conf
bind-key l run-shell '/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
```
