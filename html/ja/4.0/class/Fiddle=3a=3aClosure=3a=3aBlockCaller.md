# class Fiddle::Closure::BlockCaller < Fiddle::Closure

Ruby のブロックをラップしたコールバック関数を表すクラスです。

Ruby のブロックを C の関数ポインタとして表現するためのクラスです。

```ruby
require 'fiddle'
include Fiddle

libc = Fiddle.dlopen("/lib/libc.so.6")
qs = Fiddle::Function.new(libc["qsort"],
                          [TYPE_VOIDP, TYPE_INT, TYPE_INT, TYPE_VOIDP],
                          TYPE_VOID)
compare = Fiddle::Closure::BlockCaller.new(TYPE_INT, [TYPE_VOIDP, TYPE_VOIDP]){|x, y|
  # qsort の比較関数は 型が int(*)(void*, void*) であるため、
  # このブロックには DL::CPtr オブジェクトが渡される。
  # そのポインタが指す先は比較している文字なので、
  # DL::CPtr#to_s で1文字の文字列に変換している
  x.to_s(1) <=> y.to_s(1)
}
s = "7x0cba(Uq)"
qs.call(s, s.size, 1, compare)
p s # =>  "()07Uabcqx"
```

## Class Methods

- [new](../method/Fiddle=3a=3aClosure=3a=3aBlockCaller/s/new.md)

## Instance Methods

- [call](../method/Fiddle=3a=3aClosure=3a=3aBlockCaller/i/call.md)
