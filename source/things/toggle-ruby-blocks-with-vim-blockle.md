---
date: 2014-02-11
slug: toggle-ruby-blocks-with-vim-blockle
tags: ruby,vim
title: Toggle Ruby block syntax with vim-blockle
---

Toggle Ruby block syntax with [vim-blockle](https://github.com/jgdavey/vim-blockle):

```rb
let(:thing) do
  double(Thing, foo: :bar)
end
```
Move your cursor inside the block, and then press `<Leader>``b`

```rb
let(:thing) { double(Thing, foo: :bar) }
```

To install, add it to [Vundle](https://github.com/gmarik/Vundle.vim):

```viml
Bundle 'jgdavey/vim-blockle'
```

Thanks to @nicholaides for pointing it out.
