# IO::Buffer#empty?

### def empty? -> bool

バッファの大きさが 0 の場合に true を返します。

大きさ 0 のバッファは、[IO::Buffer.new](../../../method/IO=3a=3aBuffer/s/new.md) に 0 を渡すか、空文字列から [IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md) で作った場合などにできます。

```ruby
p IO::Buffer.new(0).empty? # => true
p IO::Buffer.new(4).empty? # => false
```
