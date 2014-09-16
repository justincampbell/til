---
date: 2013-04-01
slug: put-set-e-in-bash-scripts-to-exit-on-error
title: Put set -e in bash scripts to exit on error
---

Put `set -e` in bash scripts to exit on error.

```sh
#!/bin/bash
cd directory
echo "Deleting everything in the current directory"
```

```
$ ./script.sh
./script.sh: line 3: cd: stuff: No such file or directory
Deleting everything in the current directory
$
```

Oh no!

You can use `set -e` near the top of your script, or simply append `-e` to the shebang:

```sh
#!/bin/bash -e
cd directory
echo "Deleting everything in the current directory"
```

```
$ ./script.sh
./script.sh: line 5: cd: stuff: No such file or directory
```

Much better.

Learned from the [first episode of Destroy All Software](https://www.destroyallsoftware.com/screencasts/catalog/statistics-over-git-repositories) by @garybernhardt.
