# IO::Buffer#resize

### def resize(size) -> self

バッファの大きさを size バイトに変更します。

変更前の内容は保持されます。
変更後の大きさによっては、メモリ領域が別の場所に確保しなおされ、内容がそこへコピーされます。

[IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md) で作った外部バッファや、ロックされたバッファは大きさを変更できません。

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
