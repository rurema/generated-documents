# IO::Buffer#copy

### def copy(source, offset = 0, length = nil, source_offset = 0) -> Integer

別の [IO::Buffer](../../../class/IO=3a=3aBuffer.md) の内容を自身へコピーします。コピーしたバイト数を返します。

[String](../../../class/String.md) の内容を書き込む場合は [IO::Buffer#set_string](../../../method/IO=3a=3aBuffer/i/set_string.md) を使用してください。

- **param** `source` -- コピー元を [IO::Buffer](../../../class/IO=3a=3aBuffer.md) で指定します。
- **param** `offset` -- 書き込みを開始する位置をバッファの先頭からのバイト数で指定します。
- **param** `length` -- コピーするバイト数を指定します。省略した場合は source 全体をコピーします。
- **param** `source_offset` -- source のどの位置から読み出すかをバイト数で指定します。
- **raise** `ArgumentError` -- offset と length の合計がバッファのバイト数を超える場合に発生します。
- **raise** `IO::Buffer::AccessError` -- 書き込みできないバッファに対して呼び出した場合に発生します。

```ruby
buf = IO::Buffer.new(8)

p buf.copy(IO::Buffer.for("test"), 2) # => 4
p buf.get_string                      # => "\x00\x00test\x00\x00"

# 長さを指定して先頭 3 バイトだけコピーする
other = IO::Buffer.new(8)
p other.copy(IO::Buffer.for("abcdef"), 0, 3) # => 3
p other.get_string(0, 3)                     # => "abc"
```

- **SEE** [IO::Buffer#set_string](../../../method/IO=3a=3aBuffer/i/set_string.md), [IO::Buffer#slice](../../../method/IO=3a=3aBuffer/i/slice.md)
