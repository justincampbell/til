---
date: 2012-10-03
slug: validate-format-json-by-piping-to-python-m-json-tool
tags: shell
title: Validate/format JSON by piping to python -m json.tool
---

Validate/format JSON by piping to `python -m json.tool`:

```sh
$ echo '{ "test": true }' | python -m json.tool
{
    "test": true
}
$ echo '{ "test": true? }' | python -m json.tool
Expecting , delimiter: line 1 column 14 (char 14)
```

It's part of the Python Standard Library, so it's already on your Mac and most Linux machines.

via @aaronfeng

@nlsmith also [tells me](https://twitter.com/nlsmith/status/259687410303119360) that [yajl](http://lloyd.github.com/yajl/) supports something similar with `json_reformat`:

```sh
$ echo '{ "test": true }' | json_reformat 
{
    "test": true
}

$ echo '{ "test": true? }' | json_reformat 
lexical error: invalid char in json text.
                                        { "test": true? } 
                     (right here) ------^
 
```

There's also a `json_verify` command that does the same thing, minus spitting out pretty formatting. `brew install yajl` to get it.
