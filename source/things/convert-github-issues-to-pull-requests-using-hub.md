---
date: 2013-01-16
slug: convert-github-issues-to-pull-requests-using-hub
title: Convert Github issues to pull-requests using hub
---

Convert Github issues to pull-requests using [hub](https://github.com/defunkt/hub) and `hub pull-request -i`:

```bash
$ git status
# On branch fix-thing
$ git pull-request -i 1
https://github.com/justincampbell/my-repo/pull/1
```

via @ivey
