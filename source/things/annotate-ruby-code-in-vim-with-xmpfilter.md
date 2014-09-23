---
date: 2013-07-01
slug: annotate-ruby-code-in-vim-with-xmpfilter
tags: ruby,vim
title: Annotate Ruby code in Vim with xmpfilter
---

Annotate Ruby code in Vim with xmpfilter

![vim-ruby-xmpfilter screenshot](http://f.cl.ly/items/292g2t3e070B0N1B3903/Screen%20Shot%202013-07-01%20at%209.50.11%20AM.png)

[rcodetools](http://rubygems.org/gems/rcodetools) contains a utility called xmpfilter, which annotates Ruby code with intermediate results. This is great for testing ideas, explaining them to someone else, giving a live-coding talk, etc.

[vim-ruby-xmpfilter](https://github.com/t9md/vim-ruby-xmpfilter) provides Vim functions for xmpfilter.

First, we need to install rcodetools:

```
$ gem install rcodetools
Successfully installed rcodetools-0.8.5.0
1 gem installed
```

Then, add vim-ruby-xmpfilter to your Vim installation. My preferred way is with [Vundle](https://github.com/gmarik/vundle):

```vim
Bundle 't9md/vim-ruby-xmpfilter'
```

```
$ vim +BundleInstall +qall
$
```

Also, add mappings for keystrokes to your Vim config. I just stuck with F4/F5 suggested by the [vim-ruby-xmpfilter README](https://github.com/t9md/vim-ruby-xmpfilter#configuration):

```vim
" xmpfilter
map <F4> <Plug>(xmpfilter-mark)
map <F5> <Plug>(xmpfilter-run)
```

Now we can open any Ruby file and start playing:

```ruby
1 + 2
```

Press `F4` to annotate the line:

```ruby
1 + 2 # =>
```

And then `F5` to update all annotations in the file:

```ruby
1 + 2 # => 3
```
