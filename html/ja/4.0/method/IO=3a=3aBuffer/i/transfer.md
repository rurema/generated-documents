# IO::Buffer#transfer

### def transfer -> IO::Buffer

メモリ領域の所有権を新しい [IO::Buffer](../../../class/IO=3a=3aBuffer.md) へ移し、その新しいバッファを返します。

所有権を手放した自身は、どのメモリ領域も指さない状態になります。
この状態は [IO::Buffer#null?](../../../method/IO=3a=3aBuffer/i/null=3f.md) で調べられます。

```ruby
buf = IO::Buffer.new(4)
buf.set_string("Ruby")

other = buf.transfer
p other.get_string # => "Ruby"

p buf.null? # => true
p buf.size  # => 0
```

- **SEE** [IO::Buffer#free](../../../method/IO=3a=3aBuffer/i/free.md), [IO::Buffer#null?](../../../method/IO=3a=3aBuffer/i/null=3f.md)
