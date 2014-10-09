---
date: 2012-10-12
slug: use-python-m-simplehttpserver-to-start-a-static-web-server
tags: shell
title: Use python -m SimpleHTTPServer to start a static web server
---

Use `python -m SimpleHTTPServer` to start a static web server in the current directory:

```sh
$ touch data.txt
$ python -m SimpleHTTPServer
Serving HTTP on 0.0.0.0 port 8000 ...
1.0.0.127.in-addr.arpa - - [12/Oct/2012 16:24:11] "GET / HTTP/1.1" 200 -
1.0.0.127.in-addr.arpa - - [12/Oct/2012 16:24:11] code 404, message File not found
1.0.0.127.in-addr.arpa - - [12/Oct/2012 16:24:11] "GET /favicon.ico HTTP/1.1" 404 -
1.0.0.127.in-addr.arpa - - [12/Oct/2012 16:24:46] "GET /data.txt HTTP/1.1" 200 -
```

![](http://f.cl.ly/items/202a1T0R1l1A3C042o0u/Screen%20Shot%202012-10-19%20at%204.26.54%20PM.png)

via @matshaffer
