---
date: 2012-11-13
slug: use-vim-ruby-refactoring-to-quickly-perform-common-refactorings
title: Use vim-ruby-refactoring to quickly perform common refactorings
---

Use [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring) to quickly perform common refactorings. My 2 favorites:

#  Post-conditionals

```rb
unless current_user
  "Hello guest!"
end
```
`:RConvertPostConditional ` or `<leader>rcpc`

```rb
"Hello guest!" unless current_user
```

# Local variables

```rb
raise if current > values.to_a.mean * 2
```

`:RExtractLocalVariable` or `<leader>relv`, and then name your variable

```rb
double_the_mean = values.to_a.mean * 2

raise if current > double_the_mean
```

See more examples [here](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/).
