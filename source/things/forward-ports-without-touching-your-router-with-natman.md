---
date: 2012-10-29
slug: forward-ports-without-touching-your-router-with-natman
title: Forward ports without touching your router
---

Forward ports without touching your router with [natman](https://github.com/Marak/natman):

```sh
$ sudo npm install -g natman
$ sudo natman open ssh
info:    Creating NAT...
warn:    Using gateway: 10.0.1.1
help:    You can manually specify a gateway with -g argument
warn:    Attempting to connect...
info:    Connected to WAN address: 12.34.56.78
warn:    Mapping 12.34.56.78:8888 => localhost:22
info:    NAT established.
warn:    To stop forwarding, you may have to restart any exposed services
info:    Press CTRL-C to stop the NAT...
```

Also useful for sharing web pages with clients, or other devices:

```sh
$ rails server
$ sudo natman open 3000
```

Made with love by @marak
