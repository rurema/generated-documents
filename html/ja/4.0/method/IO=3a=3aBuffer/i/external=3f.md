# IO::Buffer#external?

### def external? -> bool

バッファが外部(external)バッファである場合に true を返します。

外部バッファは、バッファ自身が確保・マップしたのではないメモリ領域を参照します。
[IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md) で作ったバッファは、文字列のメモリを外部参照します。
外部バッファは大きさを変更できません。

```ruby
p IO::Buffer.for("test").external? # => true
p IO::Buffer.new(4).external?      # => false
```

- **SEE** [IO::Buffer#internal?](../../../method/IO=3a=3aBuffer/i/internal=3f.md)
