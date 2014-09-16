---
date: 2012-10-02
slug: avoid-doing-set-nopaste-in-vim-by-using-r-cat
title: Avoid doing :set nopaste in VIM by using :r!cat
---

Avoid doing `:set nopaste` in VIM by using `:r!cat`:

```vim
:r!cat
def method
  # ...
end
```

Ctrl+D to end.

Hat tip to @aaronfeng
