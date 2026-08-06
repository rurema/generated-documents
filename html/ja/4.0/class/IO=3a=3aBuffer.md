# class IO::Buffer < Object

メモリ領域を直接読み書きするための低レベルなバッファを表すクラスです。
Ruby 3.1 で導入されました。

[String](../class/String.md) を経由せずにメモリ領域を扱えるため、コピーを避けた入出力
(zero-copy IO)を実現するために使われます。主に
[Fiber::Scheduler](https://docs.ruby-lang.org/en/4.0/Fiber/Scheduler.html) の実装のような、低レベルな入出力を扱う場面で利用します。

バッファは以下のいずれかの方法で確保されたメモリ領域を指します。

  - 内部(internal) -- Ruby が確保したメモリ領域。[IO::Buffer.new](../method/IO=3a=3aBuffer/s/new.md) で作られます。
  - 外部(external) -- [String](../class/String.md) など、Ruby の他のオブジェクトが持つメモリ領域。
  - マップ(mapped) -- 仮想メモリ機構(Unix の mmap など)で確保されたメモリ領域。

このクラスは実験的な機能です。
利用すると「IO::Buffer is experimental and both the Ruby and C interface may
change in the future!」という警告が出力されます。
将来のバージョンで Ruby と C の双方のインターフェースが変更される可能性があります。

この警告は `Warning[:experimental] = false` を指定すると抑止できます。

```ruby
buf = IO::Buffer.new(8)
p buf.size          # => 8

buf.set_string("Ruby")
p buf.get_string    # => "Ruby\x00\x00\x00\x00"
p buf.get_string(0, 4)  # => "Ruby"
```

## Class Methods

- [for](../method/IO=3a=3aBuffer/s/for.md)
- [map](../method/IO=3a=3aBuffer/s/map.md)
- [new](../method/IO=3a=3aBuffer/s/new.md)
- [size_of](../method/IO=3a=3aBuffer/s/size_of.md)
- [string](../method/IO=3a=3aBuffer/s/string.md)

## Instance Methods

- [&](../method/IO=3a=3aBuffer/i/=26.md)
- [^](../method/IO=3a=3aBuffer/i/=5e.md)
- [|](../method/IO=3a=3aBuffer/i/=7c.md)
- [<=>](../method/IO=3a=3aBuffer/i/=3c=3d=3e.md)
- [~](../method/IO=3a=3aBuffer/i/=7e.md)
- [and!](../method/IO=3a=3aBuffer/i/and=21.md)
- [or!](../method/IO=3a=3aBuffer/i/or=21.md)
- [xor!](../method/IO=3a=3aBuffer/i/xor=21.md)
- [clear](../method/IO=3a=3aBuffer/i/clear.md)
- [copy](../method/IO=3a=3aBuffer/i/copy.md)
- [each](../method/IO=3a=3aBuffer/i/each.md)
- [each_byte](../method/IO=3a=3aBuffer/i/each_byte.md)
- [empty?](../method/IO=3a=3aBuffer/i/empty=3f.md)
- [external?](../method/IO=3a=3aBuffer/i/external=3f.md)
- [free](../method/IO=3a=3aBuffer/i/free.md)
- [get_string](../method/IO=3a=3aBuffer/i/get_string.md)
- [get_value](../method/IO=3a=3aBuffer/i/get_value.md)
- [get_values](../method/IO=3a=3aBuffer/i/get_values.md)
- [hexdump](../method/IO=3a=3aBuffer/i/hexdump.md)
- [inspect](../method/IO=3a=3aBuffer/i/inspect.md)
- [internal?](../method/IO=3a=3aBuffer/i/internal=3f.md)
- [locked](../method/IO=3a=3aBuffer/i/locked.md)
- [locked?](../method/IO=3a=3aBuffer/i/locked=3f.md)
- [mapped?](../method/IO=3a=3aBuffer/i/mapped=3f.md)
- [not!](../method/IO=3a=3aBuffer/i/not=21.md)
- [null?](../method/IO=3a=3aBuffer/i/null=3f.md)
- [pread](../method/IO=3a=3aBuffer/i/pread.md)
- [private?](../method/IO=3a=3aBuffer/i/private=3f.md)
- [pwrite](../method/IO=3a=3aBuffer/i/pwrite.md)
- [read](../method/IO=3a=3aBuffer/i/read.md)
- [readonly?](../method/IO=3a=3aBuffer/i/readonly=3f.md)
- [resize](../method/IO=3a=3aBuffer/i/resize.md)
- [set_string](../method/IO=3a=3aBuffer/i/set_string.md)
- [set_value](../method/IO=3a=3aBuffer/i/set_value.md)
- [set_values](../method/IO=3a=3aBuffer/i/set_values.md)
- [shared?](../method/IO=3a=3aBuffer/i/shared=3f.md)
- [size](../method/IO=3a=3aBuffer/i/size.md)
- [slice](../method/IO=3a=3aBuffer/i/slice.md)
- [to_s](../method/IO=3a=3aBuffer/i/to_s.md)
- [transfer](../method/IO=3a=3aBuffer/i/transfer.md)
- [valid?](../method/IO=3a=3aBuffer/i/valid=3f.md)
- [values](../method/IO=3a=3aBuffer/i/values.md)
- [write](../method/IO=3a=3aBuffer/i/write.md)

## Constants

- [BIG_ENDIAN](../method/IO=3a=3aBuffer/c/BIG_ENDIAN.md)
- [HOST_ENDIAN](../method/IO=3a=3aBuffer/c/HOST_ENDIAN.md)
- [LITTLE_ENDIAN](../method/IO=3a=3aBuffer/c/LITTLE_ENDIAN.md)
- [NETWORK_ENDIAN](../method/IO=3a=3aBuffer/c/NETWORK_ENDIAN.md)
- [DEFAULT_SIZE](../method/IO=3a=3aBuffer/c/DEFAULT_SIZE.md)
- [EXTERNAL](../method/IO=3a=3aBuffer/c/EXTERNAL.md)
- [INTERNAL](../method/IO=3a=3aBuffer/c/INTERNAL.md)
- [LOCKED](../method/IO=3a=3aBuffer/c/LOCKED.md)
- [MAPPED](../method/IO=3a=3aBuffer/c/MAPPED.md)
- [PAGE_SIZE](../method/IO=3a=3aBuffer/c/PAGE_SIZE.md)
- [PRIVATE](../method/IO=3a=3aBuffer/c/PRIVATE.md)
- [READONLY](../method/IO=3a=3aBuffer/c/READONLY.md)
- [SHARED](../method/IO=3a=3aBuffer/c/SHARED.md)
