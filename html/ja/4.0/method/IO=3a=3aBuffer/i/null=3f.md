# IO::Buffer#null?

### def null? -> bool

バッファがどのメモリ領域も指していない場合に true を返します。

[IO::Buffer#free](../../../method/IO=3a=3aBuffer/i/free.md) で解放したバッファ、[IO::Buffer#transfer](../../../method/IO=3a=3aBuffer/i/transfer.md) で所有権を手放したバッファ、および最初からメモリ領域を確保していないバッファがこれにあたります。

```ruby
p IO::Buffer.new(0).null? # => true

buf = IO::Buffer.new(4)
p buf.null? # => false
buf.free
p buf.null? # => true
```

- **SEE** [IO::Buffer#free](../../../method/IO=3a=3aBuffer/i/free.md), [IO::Buffer#transfer](../../../method/IO=3a=3aBuffer/i/transfer.md)
