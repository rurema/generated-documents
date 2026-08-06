# IO::Buffer#values

### def values(buffer_type, offset = 0, count = nil) -> [Integer | Float]

バッファの offset の位置から、buffer_type で指定した型の値を順に読み出し、配列にして返します。

指定できる型は [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) を参照してください。

- **param** `buffer_type` -- 読み出す値の型をシンボルで指定します。

- **param** `offset` -- 読み出しを開始する位置をバッファの先頭からのバイト数で指定します。

- **param** `count` -- 読み出す個数を指定します。省略した場合はバッファの末尾まで
             読み出します。

```ruby
buf = IO::Buffer.for("Hello World")
p buf.values(:U8, 2, 2) # => [108, 108]
p buf.values(:U8, 9)    # => [108, 100]
```

- **SEE** [IO::Buffer#each](../../../method/IO=3a=3aBuffer/i/each.md), [IO::Buffer#get_values](../../../method/IO=3a=3aBuffer/i/get_values.md)
