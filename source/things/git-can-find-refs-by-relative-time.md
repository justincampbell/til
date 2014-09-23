---
date: 2013-09-30
slug: git-can-find-refs-by-relative-time
tags: git
title: Git can find refs by relative time
---

Git can find refs by relative time.

Examples: `master@{yesterday}` `feature@{1 month ago}` `HEAD@{last thursday}`

```diff
.dotfiles$ git diff "master@{1 week ago}"
diff --git a/.profile b/.profile
index 0667527..5d403ef 100644
--- a/.profile
+++ b/.profile
@@ -13,7 +13,7 @@ export PATH=bin:$PATH
 # chruby
 source /usr/local/opt/chruby/share/chruby/chruby.sh
 source /usr/local/opt/chruby/share/chruby/auto.sh
-chruby 2.0.0
+chruby 2.1.0

 # git
 eval "$(hub alias -s)" # Git ♥ 's GitHub
diff --git a/.vimrc b/.vimrc
index 14da902..444c206 100644
--- a/.vimrc
+++ b/.vimrc
@@ -164,6 +164,12 @@ let g:rbpt_max = 15
 map <F4> <Plug>(xmpfilter-mark)
 map <F5> <Plug>(xmpfilter-run)

+" alias common mistyped commands to correct command
+cabbrev E e
+cabbrev Q q
+cabbrev W w
+cabbrev Wq wq
+
 " The Silver Searcher
 let g:ag_binary = system("which ag | xargs echo -n")
 if filereadable(g:ag_binary)
```

From the recently-open-sourced [Git Internals PDF](https://github.com/pluralsight/git-internals-pdf) from @chacon and @pluralsight (formally PeepCode).

Also useful: `git log --since`

```
.dotfiles$ git log --since="1 week ago" --oneline
abb6bb9 Ruby 2.1.0
19347ec Merge pull request #2 from iamjarvo/command_aliases
6952782 Use longer form of ca(cabbrev) and update comment to be more useful
```
