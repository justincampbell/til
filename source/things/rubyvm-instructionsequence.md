---
date: 2013-07-05
slug: rubyvm-instructionsequence
tags: ruby
title: RubyVM::InstructionSequence
---

`RubyVM::InstructionSequence`
can show you how the MRI VM interprets your code:

```rb
code = "3 * 4 + 5"
is = RubyVM::InstructionSequence.new(code)
= <RubyVM::InstructionSequence:<compiled>@<compiled>>

is.eval
= 17

puts is.disasm
== disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>==========
0000 trace            1                                               (   1)
0002 putobject        3
0004 putobject        4
0006 opt_mult         <ic:2>
0008 putobject        5
0010 opt_plus         <ic:3>
0012 leave
```

From @tenderlove's [RubyConf 2012 talk "Real Time Salami"](https://speakerdeck.com/tenderlove/real-time-salami)
