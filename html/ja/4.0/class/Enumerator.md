# class Enumerator < Object

each 以外のメソッドにも [Enumerable](../class/Enumerable.md) の機能を提供するためのラッパークラスです。
また、外部イテレータとしても使えます。

[Enumerable](../class/Enumerable.md) モジュールは、 [Module#include](../method/Module/i/include.md) 先のクラスが持つ
each メソッドを元に様々なメソッドを提供します。
例えば Array#map は [Array#each](../method/Array/i/each.md) の繰り返しを元にして定義されます。
Enumerator を介することにより [String#each_byte](../method/String/i/each_byte.md) のような異なる名前のイテレータについても each と同様に Enumerable の機能を利用できます。

Enumerator を生成するには [Enumerator.new](../method/Enumerator/s/new.md)あるいは
[Object#to_enum](../method/Object/i/to_enum.md), [Object#enum_for](../method/Object/i/enum_for.md) を利用します。また、一部のイテレータはブロックを渡さずに呼び出すと繰り返しを実行する代わりに
enumerator を生成して返します。

### 注意

外部イテレータとしての機能は [Fiber](../class/Fiber.md) を用いて実装されているため Fiber と同じ制限があります。
例えば以下のようなスレッドをまたいだ呼び出しはエラーになります。

```ruby title="例"
a = nil
Thread.new do
  a = [1, 2, 3].each
  a.next
end.join

p a.next
#=> t.rb:7:in 'Enumerator#next': fiber called across threads (FiberError)
#      from t.rb:7:in '<main>'
```

## Class Methods

- [new](../method/Enumerator/s/new.md)
- [produce](../method/Enumerator/s/produce.md)
- [product](../method/Enumerator/s/product.md)

## Instance Methods

- [+](../method/Enumerator/i/=2b.md)
- [each](../method/Enumerator/i/each.md)
- [feed](../method/Enumerator/i/feed.md)
- [next](../method/Enumerator/i/next.md)
- [next_values](../method/Enumerator/i/next_values.md)
- [peek](../method/Enumerator/i/peek.md)
- [peek_values](../method/Enumerator/i/peek_values.md)
- [rewind](../method/Enumerator/i/rewind.md)
- [size](../method/Enumerator/i/size.md)
- [with_index](../method/Enumerator/i/with_index.md)
- [with_object](../method/Enumerator/i/with_object.md)
