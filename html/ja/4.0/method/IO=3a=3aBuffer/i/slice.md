# IO::Buffer#slice

### def slice(offset = 0, length = nil) -> IO::Buffer

バッファの一部を指す新しい [IO::Buffer](../../../class/IO=3a=3aBuffer.md) を返します。

メモリのコピーは行わず、返されるバッファは元のバッファと同じメモリ領域を参照します。
そのため、一方への書き込みはもう一方からも見えます。
元のバッファが文字列やファイルに由来する場合、その関連も引き継がれます。

- **param** `offset` -- 参照を開始する位置をバッファの先頭からのバイト数で指定します。
           省略した場合は 0 になります。
- **param** `length` -- 参照するバイト数を指定します。
           省略した場合はバッファの末尾までになります。
- **raise** `ArgumentError` -- offset や length が負の場合、
             または offset と length の合計がバッファのバイト数を超える場合に発生します。

```ruby
buf = IO::Buffer.new(8)
buf.set_string("Ruby")

part = buf.slice(0, 4)
p part.get_string # => "Ruby"

# 同じメモリ領域を参照しているので、変更は元のバッファにも反映される
part.set_string("Xy")
p buf.get_string  # => "Xyby\x00\x00\x00\x00"
```

- **SEE** [IO::Buffer#copy](../../../method/IO=3a=3aBuffer/i/copy.md)
