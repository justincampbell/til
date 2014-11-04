---
date: 2014-11-04
slug: estimate-cost-of-source-code-with-sloccount
tags: shell
title: Estimate cost of source code with sloccount
---

Estimate cost of source code with [sloccount](http://www.dwheeler.com/sloccount/):

```
$ sloccount rails
...
Total Physical Source Lines of Code (SLOC)                = 179,579
Development Effort Estimate, Person-Years (Person-Months) = 46.56 (558.70)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 2.31 (27.66)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 20.20
Total Estimated Cost to Develop                           = $ 6,289,411
 (average salary = $56,286/year, overhead = 2.40).
SLOCCount, Copyright (C) 2001-2004 David A. Wheeler
SLOCCount is Open Source Software/Free Software, licensed under the GNU GPL.
SLOCCount comes with ABSOLUTELY NO WARRANTY, and you are welcome to
redistribute it under certain conditions as specified by the GNU GPL license;
see the documentation for details.
Please credit this data as "generated using David A. Wheeler's 'SLOCCount'."
```

You can adjust the average salary with the `--personcost` option.
