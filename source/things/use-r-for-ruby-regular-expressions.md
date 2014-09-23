---
date: 2012-11-01
slug: use-r-for-ruby-regular-expressions
tags: ruby
title: Use %r for Ruby regular expressions
---

Use `%r` for Ruby regular expressions, to avoid having to escape forward-slashes:

```ruby
"http://domain.tld".match /^http:\/\// # => true
"http://domain.tld".match %r{^http://} # => true
```

Thanks to @joshsusser
