# IO::Buffer#set_values

### def set_values(buffer_types, offset, values) -> Integer

[IO::Buffer#set_value](../../../method/IO=3a=3aBuffer/i/set_value.md) と同じですが、複数の値をまとめて書き込みます。
書き込んだ値の次の位置を返します。

- **param** `buffer_types` -- 書き込む値の型のシンボルの配列を指定します。

- **param** `offset` -- 書き込みを開始する位置をバッファの先頭からのバイト数で指定します。

- **param** `values` -- 書き込む値の配列を指定します。

- **raise** `ArgumentError` -- 型が不正な場合や、書き込む範囲がバッファの外に
             はみ出す場合に発生します。

- **raise** `IO::Buffer::AccessError` -- 読み取り専用のバッファに対して
             呼び出した場合に発生します。

```ruby
buf = IO::Buffer.new(8)
p buf.set_values([:U8, :U16], 0, [1, 2]) # => 3
p buf.get_string(0, 3)                   # => "\x01\x00\x02"
```

- **SEE** [IO::Buffer#set_value](../../../method/IO=3a=3aBuffer/i/set_value.md), [IO::Buffer#get_values](../../../method/IO=3a=3aBuffer/i/get_values.md)
