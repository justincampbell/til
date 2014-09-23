---
date: 2013-10-24
slug: prompt_command-and-a-simpler-git-prompt
tags: git,shell
title: PROMPT_COMMAND, and a simpler git prompt
---

# `PROMPT_COMMAND`, and a simpler git prompt

I love knowing my current git status. Knowing the current branch and what files have changed gives me great perspective on where I am, and what I need to do next.

I have a git prompt that I've been using for a while:

[![old git status](http://f.cl.ly/items/0409142s2c1Y1t2B410d/Screen%20Shot%202013-10-14%20at%202.21.54%20PM.png)](http://cl.ly/image/3N0A3U2i3K2e)

It's large (708 lines!) and I have no idea what it's doing. Sometimes it's really slow.

I began searching for a simpler solution. There's [another script in git-contrib](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh), but at >400 lines, it's not much simpler, especially since the other script also handles SVN and hg. There's also [git-situational-awareness](https://github.com/paulbaumgart/git-situational-awareness), which doesn't really show me enough.

So what do I want to see?

[![git status](http://f.cl.ly/items/0F2C3Q0j1T0w473w1p0z/Screen%20Shot%202013-10-14%20at%202.11.03%20PM.png)](http://cl.ly/image/2B3w1x243F3u)

(If you don't see color output, make sure you have `git config --global color.ui true` set.)

That's quite verbose. Looking at the [git-status man page](https://www.kernel.org/pub/software/scm/git/docs/git-status.html), there's an option called `--short`.

[![git status --short](http://f.cl.ly/items/321j1M1G120j1J0h0m3T/Screen%20Shot%202013-10-14%20at%202.13.01%20PM.png)](http://cl.ly/image/2D3Z0i0b2I33)

Beautiful! But it doesn't tell us what branch we're on. So let's add `--branch`.

[![git status --short --branch](http://f.cl.ly/items/1p1A3P10103S1A1M0O2V/Screen%20Shot%202013-10-14%20at%202.14.07%20PM.png)](http://cl.ly/image/2w1L2O1o0g3z)

Perfect! So how do I get this above my prompt?

There's a bash environment variable called `PROMPT_COMMAND`:

[![PROMPT_COMMAND](http://f.cl.ly/items/0r0m0M2f3Q0f06322y02/Screen%20Shot%202013-10-23%20at%2012.51.38%20PM.png)](http://cl.ly/image/2W1G0c2n1J0R)

Great! Let's put this in our `~/.profile`:

```sh
PROMPT_COMMAND='git status --branch --short'
```

`PROMPT_COMMAND` can also call a bash function. We can put more complex code in a separate file and source that from `~/.profile`. After some iterating, I ended up on the following code:

```sh
#!/bin/bash

prompt_command() {
  # Only run this if we have a .git directory
  [[ -d .git ]] &&
  # If we just ran `git status`, don't run it again
  [[ `history 1` != *'git status'* ]] &&
  # Don't show every untracked file in a directory
  git status --branch --short --untracked=normal
}

PROMPT_COMMAND='prompt_command'
```

Overall I like this a lot more than my previous script. It's a lot faster, and it even shows when my current branch is ahead or behind of the remote.

[![remote tracking status](http://f.cl.ly/items/1E3E3K252d3X1O3q3z27/Screen%20Shot%202013-10-23%20at%201.18.48%20PM.png)](http://cl.ly/image/2Q3S1i1i1b2X)

Check out the full version I use with prettier colors, PS1 error codes, and <span><FONT COLOR="#900">r</FONT><FONT COLOR="#970">a</FONT><FONT COLOR="#990">i</FONT><FONT COLOR="#190">n</FONT><FONT COLOR="#090">b</FONT><FONT COLOR="#097">o</FONT><FONT COLOR="#099">w</FONT></span> prompts here: [prompt.sh in justincampbell/.dotfiles](https://github.com/justincampbell/.dotfiles/blob/master/prompt.sh).
