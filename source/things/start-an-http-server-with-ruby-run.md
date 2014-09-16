---
date: 2013-12-02
slug: start-an-http-server-with-ruby-run
title: Start an HTTP server with ruby -run
---

# Start an HTTP server with `ruby -run`

[Ruby 2.0 has a library called "un"](http://www.ruby-doc.org/stdlib-2.0.0/libdoc/un/rdoc/Object.html), which you can require with the require flag "-r" (-run). The library contains a few helpers for OS-agnostic operations such as creating directories, touching files, etc...

One of the helpers, [httpd](http://www.ruby-doc.org/stdlib-2.0.0/libdoc/un/rdoc/Object.html#method-i-httpd), runs an HTTP server with the passed directory name. To serve the current directory:

`ruby -run -e httpd . -p 5000`

![ruby -run httpd example](http://f.cl.ly/items/0Q0r2f3v2V1m3V0Z3J2d/Screen%20Shot%202013-11-05%20at%202.08.51%20PM.png)

via @snatchev

**Update**: @StephenBallNC pointed me to the [Big list of http static server one-liners](https://gist.github.com/willurd/5720255). Thanks!
