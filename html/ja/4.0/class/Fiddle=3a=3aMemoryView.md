# class Fiddle::MemoryView < Object

[spec/memory_view](../doc/spec=2fmemory_view.md) のラッパークラスです。これを使うと、メモリビューのプロデューサの内部データに Ruby レイヤからアクセスできます。

例えば [Fiddle::Pointer](../class/Fiddle=3a=3aPointer.md) はメモリビュープロデューサなので、 [Fiddle::MemoryView](../class/Fiddle=3a=3aMemoryView.md) でメモリビューをエクスポートさせることができます。

```ruby title="例"
ptr = Fiddle::Pointer["Hello, MemoryView"]
Fiddle::MemoryView.export(ptr) do |view|
  view.obj          # => ptr
  view.byte_size    # => 17
  view.readonly?    # => true
  view.format       # => nil
  view.item_size    # => 1
  view.ndim         # => 1
  view.shape        # => nil
  view.strides      # => nil
  view.sub_offsets  # => nil
  view.to_s         # => "Hello, MemoryView"
  view[0]           # => 72 ("H")
  view[1]           # => 101 ("e")
  view[16]          # => 119 ("w")
end
```

ポインタには `shape` などがないため、 1 次元のバイト列としてエクスポートされています。

## Class Methods

- [export](../method/Fiddle=3a=3aMemoryView/s/export.md)
- [new](../method/Fiddle=3a=3aMemoryView/s/new.md)

## Instance Methods

- [\[\]](../method/Fiddle=3a=3aMemoryView/i/=5b=5d.md)
- [byte_size](../method/Fiddle=3a=3aMemoryView/i/byte_size.md)
- [format](../method/Fiddle=3a=3aMemoryView/i/format.md)
- [item_size](../method/Fiddle=3a=3aMemoryView/i/item_size.md)
- [ndim](../method/Fiddle=3a=3aMemoryView/i/ndim.md)
- [obj](../method/Fiddle=3a=3aMemoryView/i/obj.md)
- [readonly?](../method/Fiddle=3a=3aMemoryView/i/readonly=3f.md)
- [release](../method/Fiddle=3a=3aMemoryView/i/release.md)
- [shape](../method/Fiddle=3a=3aMemoryView/i/shape.md)
- [strides](../method/Fiddle=3a=3aMemoryView/i/strides.md)
- [sub_offsets](../method/Fiddle=3a=3aMemoryView/i/sub_offsets.md)
- [to_s](../method/Fiddle=3a=3aMemoryView/i/to_s.md)
