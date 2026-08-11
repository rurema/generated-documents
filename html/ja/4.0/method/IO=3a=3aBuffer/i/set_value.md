# IO::Buffer#set_value

### def set_value(buffer_type, offset, value) -> Integer

バッファの offset の位置に、buffer_type で指定した型で value を書き込みます。

指定できる型は [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md) を参照してください。
整数の型に [Float](../../../class/Float.md) を渡した場合は、小数点以下が切り捨てられます。

書き込んだ値の次の位置を返します。

- **param** `buffer_type` -- 書き込む値の型をシンボルで指定します。

- **param** `offset` -- 書き込む位置をバッファの先頭からのバイト数で指定します。

- **param** `value` -- 書き込む値を数値で指定します。

- **raise** `ArgumentError` -- buffer_type が不正な場合や、書き込む範囲がバッファの外にはみ出す場合に発生します。

- **raise** `IO::Buffer::AccessError` -- 読み取り専用のバッファに対して呼び出した場合に発生します。

```ruby
buf = IO::Buffer.new(8)
buf.set_value(:U8, 1, 111)
p buf.get_string # => "\x00o\x00\x00\x00\x00\x00\x00"

# 整数の型に Float を渡すと小数点以下は切り捨てられる
buf = IO::Buffer.new(8)
buf.set_value(:U32, 0, 2.5)
p buf.get_value(:U32, 0) # => 2
```

- **SEE** [IO::Buffer#get_value](../../../method/IO=3a=3aBuffer/i/get_value.md)
