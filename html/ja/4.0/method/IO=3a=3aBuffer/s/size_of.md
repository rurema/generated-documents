# IO::Buffer.size_of

### def IO::Buffer.size_of(buffer_type) -> Integer
### def IO::Buffer.size_of(buffer_types) -> Integer

数値の型が占めるバイト数を返します。

型の配列を渡した場合は、それぞれのバイト数の合計を返します。
指定できる型については [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) を参照してください。

- **param** `buffer_type` -- 型を表すシンボルを指定します。
- **param** `buffer_types` -- 型を表すシンボルの配列を指定します。

- **raise** `ArgumentError` -- 型として使えないシンボルを指定した場合に発生します。

- **raise** `TypeError` -- シンボルでも配列でもないオブジェクトを指定した場合に発生します。

```ruby
p IO::Buffer.size_of(:U8)          # => 1
p IO::Buffer.size_of(:u32)         # => 4
p IO::Buffer.size_of(:f64)         # => 8

# 配列を渡すと合計を返す
p IO::Buffer.size_of([:u32, :u32]) # => 8
```

- **SEE** [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md), [IO::Buffer#get_values](../../../method/IO=3a=3aBuffer/i/get_values.md)
