---
date: 2012-11-05
slug: ruby-2-0-0-keyword-arguments
title: Ruby 2.0.0 keyword arguments
---

Ruby 2.0.0 keyword arguments...

...are not required (they don't affect the method signature):

```rb
def do_the(thing, with: "nothing")
  puts "Doing the #{thing} with #{with}"
end

do_the "second thing", with: "another thing"
= "Doing the second thing with another thing"

do_the "first thing"
= "Doing the first thing with nothing"
```

Pleasant surprise, as I was expecting Objective-C semantics.

...always have defaults:

```rb
def do_the(thing, with: nil)
```

...eliminate the need for validating/defaulting option hashes:

```rb
# Before
def create_user(options = {})
  raise "Invalid key" if (options.keys - [:name, :role]).any?
  options.reverse_merge! role: :guest
  # ...
end

# After
def create_user(name, role: :guest)
  # ...
end
```

...but you can still use your own argument hashes, along with variable argument arrays:

```rb
def my_method(first = nil, *second, third: nil, **fourth)
  [first, second, third, fourth]
end

my_method
= [nil, [], nil, {}]

my_method 1
= [1, [], nil, {}]

my_method 1, 2.1, 2.2, 2.3
= [1, [2.1, 2.2, 2.3], nil, {}]

my_method 1, 2.1, 2.2, 2.3, third: 3
= [1, [2.1, 2.2, 2.3], 3, {}]

my_method 1, 2.1, 2.2, 2.3, third: 3, fourth: 4
= [1, [2.1, 2.2, 2.3], 3, {:fourth=>4}]
```

...are not order-dependent:

```rb
def request(url, method: nil, timeout: nil)
  "#{method}ing #{url} for #{timeout}"
end

request "http://my.app", method: :get, timeout: 10.seconds
= "Getting http://my.app for 10 seconds"

request "http://my.app", timeout: 10.seconds, method: :get 
= "Getting http://my.app for 10 seconds"
```

...work with any lambda:

```rb
validator = lambda do |object: nil, with: nil|
  "Validating #{object} with #{with}"
end

validator.call object: :user, with: :user_validator
= "Validating user with user_validator"
```

...are awesome :)
