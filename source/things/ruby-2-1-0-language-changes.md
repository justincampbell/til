---
date: 2013-09-23
slug: ruby-2-1-0-language-changes
tags: ruby
title: Ruby 2.1.0 Language Changes
---

Ruby 2.1.0 Language Changes

## Frozen string literals

```rb
> string = "hi mom"f
= "hi mom"
> string.frozen?
= true
> string << "lol"
RuntimeError: can't modify frozen String
        from (irb):27
        from /Users/Justin/.rubies/ruby-2.1.0-preview1/bin/irb:11:in `<main>'
```

## Rational literals

```rb
> 3.14r
= (157/50)
> 0.01r
= (1/100)
```

Very useful when the (im)precision of Float will not do:

```rb
> 1.1234567890123456789
= 1.1234567890123457
> 1.1234567890123456789r
= (11234567890123456789/10000000000000000000)
```

## `def` now returns the method name as a symbol

```rb
> def foo() bar end
= :foo
```

See more in the [NEWS file](https://github.com/ruby/ruby/blob/b23bbb1/NEWS).
