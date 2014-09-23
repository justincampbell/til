---
date: 2012-12-20
slug: create-an-ackrc-file
tags: shell,tools
title: Create an ackrc file
---

Create an `~/.ackrc` file with your preferred defaults for [Ack](http://betterthangrep.com).

```ackrc
--all-types
--ignore-dir=coverage/
--ignore-dir=doc/
--ignore-dir=tmp/
--smart-case
```
