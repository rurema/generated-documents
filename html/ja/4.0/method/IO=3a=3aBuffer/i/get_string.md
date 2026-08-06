# IO::Buffer#get_string

### def get_string(offset = 0, length = nil, encoding = Encoding::BINARY) -> String

バッファの内容を [String](../../../class/String.md) として取り出して返します。

- **param** `offset` -- 読み出しを開始する位置をバッファの先頭からのバイト数で指定します。

- **param** `length` -- 読み出すバイト数を指定します。省略した場合は offset から
               バッファの終端までを読み出します。

- **param** `encoding` -- 返す文字列のエンコーディングを指定します。
                 省略した場合は [Encoding::BINARY](../../../method/Encoding/c/BINARY.md) になります。

- **raise** `ArgumentError` -- offset と length の合計がバッファのバイト数を超える場合に発生します。

```ruby
buf = IO::Buffer.new(8)
buf.set_string("Ruby")

p buf.get_string        # => "Ruby\x00\x00\x00\x00"
p buf.get_string(0, 4)  # => "Ruby"
p buf.get_string(1, 3)  # => "uby"

p buf.get_string(0, 4).encoding.name                   # => "ASCII-8BIT"
p buf.get_string(0, 4, Encoding::UTF_8).encoding.name  # => "UTF-8"

buf.get_string(0, 99)   # ~> ArgumentError
```

- **SEE** [IO::Buffer#set_string](../../../method/IO=3a=3aBuffer/i/set_string.md)
