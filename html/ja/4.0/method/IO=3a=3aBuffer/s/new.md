# IO::Buffer.new

### def IO::Buffer.new(size = IO::Buffer::DEFAULT_SIZE, flags = 0) -> IO::Buffer

size バイトの、0 で埋められた新しいバッファを作成して返します。

既定では内部(internal)バッファ、すなわち Ruby が直接確保したメモリ領域になります。ただし size が OS 依存の [IO::Buffer::PAGE_SIZE](../../../method/IO=3a=3aBuffer/c/PAGE_SIZE.md) 以上の場合は、仮想メモリ機構(Unix では匿名 mmap、Windows では VirtualAlloc)を用いて確保されます。flags に [IO::Buffer::MAPPED](../../../method/IO=3a=3aBuffer/c/MAPPED.md) を指定すると、
size によらず後者の方法で確保されます。

- **param** `size` -- 確保するバッファのバイト数を整数で指定します。
             省略した場合は [IO::Buffer::DEFAULT_SIZE](../../../method/IO=3a=3aBuffer/c/DEFAULT_SIZE.md) になります。

- **param** `flags` -- バッファの確保方法を [IO::Buffer::MAPPED](../../../method/IO=3a=3aBuffer/c/MAPPED.md) などの定数で指定します。

```ruby
buf = IO::Buffer.new(4)
p buf.size       # => 4
p buf.internal?  # => true
p buf.get_string # => "\x00\x00\x00\x00"
```

- **SEE** [IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md), [IO::Buffer.map](../../../method/IO=3a=3aBuffer/s/map.md)
