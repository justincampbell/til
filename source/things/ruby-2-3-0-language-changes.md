---
date: 2015-11-12
slug: ruby-2-3-0-language-changes
tags: ruby
title: Ruby 2.3.0 Language Changes
---

Ruby 2.3.0 Language Changes

# [Frozen string literal pragma](https://bugs.ruby-lang.org/issues/11473)

```rb
city = "Philadelphia"
city.frozen? # => false
city << ", PA"
city # => "Philadelphia, PA"
```

```rb
# frozen_string_literal: true

city = "Philadelphia"
city.frozen? # => true
city << ", PA" # RuntimeError: can't modify frozen String
```

# [Safe navigation operator](https://bugs.ruby-lang.org/issues/11537)

```rb
a = 1.23
b = nil

a.round # => 1
b.round # NoMethodError: undefined method `round' for nil:NilClass

a&.round # => 1
b&.round # => nil

nil&.none&.of&.these&.methods&.exist # => nil
```

# [did\_you\_mean.gem is bundled](https://bugs.ruby-lang.org/issues/11252)

```rb
> "abcd".revrse
NoMethodError: undefined method `revrse' for "abcd":String
Did you mean?  reverse
               reverse!
```
