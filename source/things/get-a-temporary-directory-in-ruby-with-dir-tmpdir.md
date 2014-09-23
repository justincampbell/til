---
date: 2012-10-17
slug: get-a-temporary-directory-in-ruby-with-dir-tmpdir
tags: ruby
title: Get a temporary directory in Ruby
---

Get a temporary directory in Ruby with `Dir.tmpdir`, or a unique one with `Dir.mktmpdir`:

```rb
> require 'tmpdir'
= true
> Dir.tmpdir
= "/var/folders/gz/5xvm5fkx79bdr3bnbchj68980000gn/T"
> Dir.mktmpdir
= "/var/folders/gz/5xvm5fkx79bdr3bnbchj68980000gn/T/d20121019-72333-q6n2fm"
```
