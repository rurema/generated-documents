# IO::Buffer#inspect

### def inspect -> String

バッファの状態と内容を表した文字列を返します。

[IO::Buffer#to_s](../../../method/IO=3a=3aBuffer/i/to_s.md) と同じ 1 行に続けて、バッファの内容を
[IO::Buffer#hexdump](../../../method/IO=3a=3aBuffer/i/hexdump.md) と同じ 16 進ダンプ形式で表示します。
この表示形式は将来変更される可能性があります。

ダンプするのは先頭 256 バイトまでです。
これを超える分は表示されず、代わりに残りのバイト数が示されます。

```ruby
buf = IO::Buffer.for("Hello World")
puts buf.inspect
# => #<IO::Buffer 0x0000000100e726b8+11 EXTERNAL READONLY SLICE>
#    0x00000000  48 65 6c 6c 6f 20 57 6f 72 6c 64                Hello World
```


```ruby title="例: 256 バイトを超えるバッファ"
puts IO::Buffer.new(300).inspect.lines.last
# => (and 44 more bytes not printed)
```

- **SEE** [IO::Buffer#to_s](../../../method/IO=3a=3aBuffer/i/to_s.md), [IO::Buffer#hexdump](../../../method/IO=3a=3aBuffer/i/hexdump.md)
