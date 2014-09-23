---
date: 2012-10-04
slug: search-all-files-with-ack-a
tags: shell,tools
title: Search all files with ack -a
---

Ack only searches supported files. To search everything, use ack -a, which still ignores version-control directories.

```sh
$ echo "test" > file.coffee

$ echo "test" > file.rb

$ ack test
file.rb
1:test

$ ack -a test
file.coffee
1:test

file.rb
1:test
```

Thanks to @nlsmith
