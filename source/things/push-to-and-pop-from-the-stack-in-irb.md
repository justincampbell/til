---
date: 2013-08-12
slug: push-to-and-pop-from-the-stack-in-irb
title: Push to and pop from the workspace stack in IRB
---

Push to and pop from the workspace stack in IRB using `pushws` and `popws`:

```rb
> self
= main

> thing = Object.new
= #<Object:0x007f8eb18b54d8>

> pushws thing
= [main]

> self
= #<Object:0x007f8eb18b54d8>

> def hello; "hey!"; end
= nil

> hello
= "hey!"

> pushws hello
= [main, #<Object:0x007f8eb18b54d8>]

> self
= "hey!"

> popws
= [main]

> popws
= []

> self
= main

> thing.hello
= "hey!"
```

Defined in [irb/ext/workspaces.rb](https://github.com/ruby/ruby/blob/trunk/lib/irb/ext/workspaces.rb).
