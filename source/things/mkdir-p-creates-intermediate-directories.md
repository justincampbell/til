---
date: 2012-10-02
slug: mkdir-p-creates-intermediate-directories
tags: shell
title: mkdir -p creates intermediate directories
---

`mkdir -p` creates intermediate directories:

```sh
$ mkdir a/b/c
mkdir: a/b: No such file or directory

$ mkdir -p a/b/c

$ tree a
a
└── b
    └── c

2 directories, 0 files
```

Thanks to @aaronfeng
