# class Fiddle::Closure < Object

コールバック関数を表すクラスです。

Ruby のメソッド(call)を C の関数ポインタとして表現するためのクラスです。

FFI の closure の wrapper です。

利用法としては、このクラスのサブクラスを作ってそのサブクラスに call メソッドを定義し、
new でオブジェクトを生成することで利用します。
  
```ruby
require 'fiddle'
include Fiddle # TYPE_* を使うために include する
  
class Compare < Fiddle::Closure
  # qsort の比較関数は 型が int(*)(void*, void*) であるため、
  # このメソッドには DL::CPtr オブジェクトが渡される。
  # そのポインタが指す先は比較している文字なので、
  # DL::CPtr#to_s で1文字の文字列に変換している
  def call(x, y)
    x.to_s(1) <=> y.to_s(1)
  end
end
  
libc = DL.dlopen("/lib/libc.so.6")
qs = Fiddle::Function.new(libc["qsort"],
                          [TYPE_VOIDP, TYPE_INT, TYPE_INT, TYPE_VOIDP],
                          TYPE_VOID)
s = "7x0cba(Uq)"
qs.call(s, s.size, 1, Compare.new(TYPE_INT, [TYPE_VOIDP, TYPE_VOIDP]))
p s # =>  "()07Uabcqx"
```

[Class.new](../method/Class/s/new.md) を使うことで、サブクラスを明示的に作ることなしにコールバックオブジェクトを作ることができます。

```ruby
require 'fiddle'
include Fiddle # TYPE_* を使うために include する
compare = Class.new(Fiddle::Closure){
  def call(x, y)
    x.to_s(1) <=> y
  end
}.new(TYPE_INT, [TYPE_VOIDP, TYPE_VOIDP])
```

単に Ruby のブロックを C の(コールバック)関数に変換したい場合は
[Fiddle::Closure::BlockCaller](../class/Fiddle=3a=3aClosure=3a=3aBlockCaller.md) を使うほうが簡単です。

## Class Methods

- [new](../method/Fiddle=3a=3aClosure/s/new.md)

## Instance Methods

- [args](../method/Fiddle=3a=3aClosure/i/args.md)
- [ctype](../method/Fiddle=3a=3aClosure/i/ctype.md)
- [to_i](../method/Fiddle=3a=3aClosure/i/to_i.md)
