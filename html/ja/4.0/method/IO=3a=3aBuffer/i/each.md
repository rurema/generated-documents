# IO::Buffer#each

### def each(buffer_type, offset = 0, count = nil) {|offset, value| ... } -> self
### def each(buffer_type, offset = 0, count = nil) -> Enumerator

バッファの offset の位置から、buffer_type で指定した型の値を順に読み出し、その位置と値をブロックに渡して繰り返します。

指定できる型は [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) を参照してください。
ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `buffer_type` -- 読み出す値の型をシンボルで指定します。

- **param** `offset` -- 読み出しを開始する位置をバッファの先頭からのバイト数で指定します。

- **param** `count` -- 読み出す個数を指定します。省略した場合はバッファの末尾まで読み出します。

```ruby
IO::Buffer.for("Hello World").each(:U8, 2, 2) do |offset, value|
  p [offset, value]
end
# => [2, 108]
#    [3, 108]
```

- **SEE** [IO::Buffer#values](../../../method/IO=3a=3aBuffer/i/values.md), [IO::Buffer#each_byte](../../../method/IO=3a=3aBuffer/i/each_byte.md)
