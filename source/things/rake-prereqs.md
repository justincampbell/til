---
date: 2013-04-08
slug: rake-prereqs
tags: ruby
title: rake prereqs
---

`rake --prereqs` shows the dependencies of your rake tasks:

```
$ rake -P
rake build
rake cane
rake ci
    spec
    cane
rake default
    ci
rake install
    build
rake release
    build
rake spec
```

Useful for navigating the maze of Rails' `rake db:...` commands.
