---
date: 2012-10-25
slug: git-commit-v-shows-you-the-currently-staged-diff-in-your-editor
tags: git
title: git commit -v shows you the currently staged diff in your editor
---

`git commit -v` shows you the currently staged diff in your editor:

```sh
$ echo "John Doe" > names.txt
$ git add .
$ git commit -m "Create names.txt"
$ echo "Jane Doe" > names.txt
$ git add .
$ git commit -v
```

```diff
Changed John to Jane

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#‣modified:   names.txt
#
diff --git a/names.txt b/names.txt
index 0f59cb3..fddfb72 100644
--- a/names.txt
+++ b/names.txt
@@ -1 +1 @@
-John Doe
+Jane Doe
```

Thanks @aaronfeng
