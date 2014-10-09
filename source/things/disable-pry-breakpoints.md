---
date: 2014-10-09
slug: disable-pry-breakpoints
tags: ruby
title: Disable Pry breakpoints
---

Sometimes when debugging Ruby with [Pry](http://pryrepl.org), I end up with multiple `binding.pry` statements scattered around, and I occasionally want to just skip all of them.

Setting the environment variable `DISABLE_PRY` will allow you to skip all Pry breakpoints:

```
$ DISABLE_PRY=true rails server # ignores all breakpoints
$ rspec spec/current_spec.rb # will pause on a `binding.pry`
```
