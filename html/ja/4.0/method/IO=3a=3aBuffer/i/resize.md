# IO::Buffer#resize

### def resize(size) -> self

バッファの大きさを size バイトに変更します。

変更前の内容は保持されます。
変更後の大きさによっては、メモリ領域が別の場所に確保しなおされ、内容がそこへコピーされます。

[IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md) で作った外部バッファや、ロックされたバッファは大きさを変更できません。

[IO::Buffer#slice](../../../method/IO=3a=3aBuffer/i/slice.md) で作ったバッファ(スライス)に対して呼び出すと、新しいメモリ領域を確保して内容をコピーし、参照元から切り離された内部バッファになります。
大きさを変えない場合も同じです。以降は、一方への書き込みがもう一方には反映されません。
参照元が外部バッファやロック中のバッファであっても呼び出せ、参照元の範囲を超える大きさにもできます。

- **param** `size` -- 変更後の大きさをバイト数で指定します。
- **raise** `IO::Buffer::AccessError` -- 大きさを変更できないバッファに対して呼び出した場合に発生します。

```ruby
buf = IO::Buffer.new(4)
buf.set_string("test")

buf.resize(8)
p buf.size             # => 8
p buf.get_string(0, 4) # => "test"

IO::Buffer.for("abc").resize(8) # ~> IO::Buffer::AccessError
```

```ruby title="スライスに対する resize"
buf = IO::Buffer.new(8)
buf.set_string("abcdefgh")

part = buf.slice(2, 4)
part.resize(2)
p part.internal?  # => true
p part.get_string # => "cd"

part.set_string("XY")
p part.get_string # => "XY"
p buf.get_string  # => "abcdefgh"
```
