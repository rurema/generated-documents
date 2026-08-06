# IO::Buffer#internal?

### def internal? -> bool

バッファが内部(internal)バッファである場合に true を返します。

内部バッファは、バッファ自身が確保したメモリ領域を参照します。
文字列などの外部のメモリやファイルのマッピングとは結び付いていません。
[IO::Buffer.new](../../../method/IO=3a=3aBuffer/s/new.md) で作られるバッファは既定で内部バッファです。

```ruby
p IO::Buffer.new(4).internal? # => true
```

- **SEE** [IO::Buffer#external?](../../../method/IO=3a=3aBuffer/i/external=3f.md)
