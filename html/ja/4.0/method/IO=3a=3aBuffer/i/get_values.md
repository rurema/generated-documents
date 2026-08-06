# IO::Buffer#get_values

### def get_values(buffer_types, offset) -> [Integer | Float]

[IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) と同じですが、複数の型をまとめて読み出し、値の配列を返します。

- **param** `buffer_types` -- 読み出す値の型のシンボルの配列を指定します。
             指定できるシンボルは [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) を参照してください。

- **param** `offset` -- 読み出しを開始する位置をバッファの先頭からのバイト数で指定します。

- **raise** `ArgumentError` -- 型が不正な場合や、読み出す範囲がバッファの外に
             はみ出す場合に発生します。

```ruby
buf = IO::Buffer.for([1.5, 2.5].pack("ff"))
p buf.get_values([:f32, :f32], 0) # => [1.5, 2.5]
```

- **SEE** [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md), [IO::Buffer#set_values](../../../method/IO=3a=3aBuffer/i/set_values.md)
