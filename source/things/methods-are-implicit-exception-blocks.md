---
date: 2012-12-18
slug: methods-are-implicit-exception-blocks
tags: ruby
title: Methods are implicit exception blocks
---

Methods are implicit exception blocks, so it's possible to `rescue`/`ensure` from them without a `begin` block:

```rb
def file_contents(path)
  File.read path
rescue Errno::ENOENT
  ""
end
```

```rb
def with_lock
  mutex = Mutex.new
  mutex.lock

  yield
ensure
  mutex.unlock
end
```

From @resetexistence and the [Berkshelf](http://github.com/RiotGames/berkshelf) code base.
