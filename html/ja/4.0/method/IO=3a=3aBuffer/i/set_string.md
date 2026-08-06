# IO::Buffer#set_string

### def set_string(string, offset = 0, length = nil, source_offset = 0) -> Integer

文字列 string の内容をバッファに書き込みます。書き込んだバイト数を返します。

- **param** `string` -- 書き込む内容を [String](../../../class/String.md) で指定します。

- **param** `offset` -- 書き込みを開始する位置をバッファの先頭からのバイト数で指定します。

- **param** `length` -- 書き込むバイト数を指定します。省略した場合は string 全体を書き込みます。

- **param** `source_offset` -- string のどの位置から読み出すかをバイト数で指定します。

- **raise** `ArgumentError` -- offset と length の合計がバッファのバイト数を超える場合に発生します。

- **raise** `IO::Buffer::AccessError` -- 書き込みできないバッファに対して呼び出した場合に発生します。
             詳しくは [IO::Buffer::AccessError](../../../class/IO=3a=3aBuffer=3a=3aAccessError.md) を参照してください。

```ruby
buf = IO::Buffer.new(8)

p buf.set_string("Ruby")   # => 4
p buf.get_string           # => "Ruby\x00\x00\x00\x00"

buf.set_string("XY", 6)
p buf.get_string           # => "Ruby\x00\x00XY"

IO::Buffer.new(2).set_string("TOOLONG") # ~> ArgumentError
```

- **SEE** [IO::Buffer#get_string](../../../method/IO=3a=3aBuffer/i/get_string.md)
