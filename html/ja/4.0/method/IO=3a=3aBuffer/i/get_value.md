# IO::Buffer#get_value

### def get_value(buffer_type, offset) -> Integer | Float

バッファの offset の位置から、buffer_type で指定した型の値を読み出して返します。

buffer_type には以下のシンボルを指定します。
小文字で始まるものはリトルエンディアン、大文字で始まるものはビッグエンディアンです
(1 バイトの `:U8` と `:S8` にバイトオーダーの区別はありません)。

- **整数**: `:U8` `:S8` (1 バイト)、`:u16` `:U16` `:s16` `:S16` (2 バイト)、
  `:u32` `:U32` `:s32` `:S32` (4 バイト)、`:u64` `:U64` `:s64` `:S64` (8 バイト)
  、`:u128` `:U128` `:s128` `:S128` (16 バイト)
- **浮動小数点数**: `:f32` `:F32` (4 バイト)、`:f64` `:F64` (8 バイト)

小文字の `u` `s` `f` で始まるものが符号なし整数・符号付き整数・浮動小数点数を表し、
`u` と `s` の対応する大文字はビッグエンディアンを意味します。

- **param** `buffer_type` -- 読み出す値の型を上記のシンボルで指定します。

- **param** `offset` -- 読み出す位置をバッファの先頭からのバイト数で指定します。

- **raise** `ArgumentError` -- buffer_type が上記以外の場合や、読み出す範囲がバッファの外にはみ出す場合に発生します。

```ruby
buf = IO::Buffer.for([1.5].pack("f"))
p buf.get_value(:f32, 0) # => 1.5

buf = IO::Buffer.for("\x01\x02")
p buf.get_value(:u16, 0) # => 513
p buf.get_value(:U16, 0) # => 258
```

- **SEE** [IO::Buffer#set_value](../../../method/IO=3a=3aBuffer/i/set_value.md), [IO::Buffer#get_values](../../../method/IO=3a=3aBuffer/i/get_values.md), [IO::Buffer#values](../../../method/IO=3a=3aBuffer/i/values.md)
