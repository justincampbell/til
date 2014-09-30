---
date: 2014-10-06
slug: stage-parts-of-a-file-and-review-your-git-commits
tags: git
title: Stage parts of a file, and review your git commits
---

When committing, I used to do a `git diff` to see what has been changed (most of the time), and then a brute-force `git add .`, `git commit -m ...`. This tends to end up with junk being committed along with what we wanted, or smushing multiple change ideas into a single "save point".

Commits are what our team members see when looking at the history of a project's changes. They're also breadcrumbs to help us figure out _why_ something was done, and we can never predict when and where that question will be. We should treat them with the same care and thoughtfulness as the code itself.

So how can we commit better?

My favorite tool is `git add -p` (short for `--patch`). It shows you each hunk of changes you're about to commit, and asks you what to do with it:

```diff
$ git add -p
diff --git a/config.rb b/config.rb
index 3c7ad3d..d88ee8c 100644
--- a/config.rb
+++ b/config.rb
@@ -6,12 +6,14 @@ set :github_url, "https://github.com/justincampbell/til"
 set :site_name, "Today, I Learned..."
 set :site_url, "http://til.justincampbell.me"

+# TODO: update Slim so we don't need this
 Slim::Engine.disable_option_validator!

 Time.zone = 'Eastern Time (US & Canada)'

 set :css_dir, 'stylesheets'
 set :images_dir, 'images'
+set :javascripts_dir, 'javascripts'

 set :slim, layout_engine: :slim

Stage this hunk [y,n,q,a,d,/,s,e,?]?
```

As you can see here, there are 2 lines changed in this file. They're close enough that git is considering them one hunk. I'd like to commit the `set ...` line, but not the comment. We can type `s` to split this into smaller hunks. We can then type `n` to discard the hunk we don't care about, and `y` to stage the one we do:

```diff
Stage this hunk [y,n,q,a,d,/,s,e,?]? s
Split into 2 hunks.
@@ -6,9 +6,10 @@
 set :site_name, "Today, I Learned..."
 set :site_url, "http://til.justincampbell.me"

+# TODO: update Slim so we don't need this
 Slim::Engine.disable_option_validator!

 Time.zone = 'Eastern Time (US & Canada)'

 set :css_dir, 'stylesheets'
 set :images_dir, 'images'
Stage this hunk [y,n,q,a,d,/,j,J,g,e,?]? n
@@ -9,9 +10,10 @@
 Slim::Engine.disable_option_validator!

 Time.zone = 'Eastern Time (US & Canada)'

 set :css_dir, 'stylesheets'
 set :images_dir, 'images'
+set :javascripts_dir, 'javascripts'

 set :slim, layout_engine: :slim

Stage this hunk [y,n,q,a,d,/,K,g,e,?]? y
```

Another tool I like is `git diff --staged`. It shows what we're about to commit, before we do so.

If we run `git diff --staged`, we can see that only the configuration change has been staged, and the comment will not be commited:

```diff
$ git diff --staged
diff --git a/config.rb b/config.rb
index 3c7ad3d..eb8a352 100644
--- a/config.rb
+++ b/config.rb
@@ -12,6 +12,7 @@ Time.zone = 'Eastern Time (US & Canada)'

 set :css_dir, 'stylesheets'
 set :images_dir, 'images'
+set :javascripts_dir, 'javascripts'

 set :slim, layout_engine: :slim
```

That looks good. We can now commit using `git commit`.

For reference, there are quite a few options for `git add -p`. If we type `?`, git will show us all possible options:

    y - stage this hunk
    n - do not stage this hunk
    q - quit; do not stage this hunk or any of the remaining ones
    a - stage this hunk and all later hunks in the file
    d - do not stage this hunk or any of the later hunks in the file
    g - select a hunk to go to
    / - search for a hunk matching the given regex
    j - leave this hunk undecided, see next undecided hunk
    J - leave this hunk undecided, see next hunk
    k - leave this hunk undecided, see previous undecided hunk
    K - leave this hunk undecided, see previous hunk
    s - split the current hunk into smaller hunks
    e - manually edit the current hunk
    ? - print help
