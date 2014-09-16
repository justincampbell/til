---
date: 2012-10-11
slug: ctrl-t-shows-you-what-your-terminal-is-doing
title: Ctrl+T shows you what your terminal is doing
---

Ctrl+T shows you what your terminal is doing

```sh
$ sleep 1 && sleep 1 && sleep 1
load: 1.31  cmd: sleep 60813 waiting 0.00u 0.00s
load: 1.31  cmd: sleep 60814 waiting 0.00u 0.00s
load: 1.31  cmd: sleep 60815 waiting 0.00u 0.00s 
```

Useful if a script is stuck, shelling out, or you're curious why your prompt is taking so long to load.

from @aaronfeng
