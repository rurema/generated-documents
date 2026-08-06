# XMP.new

### def XMP.new(bind = nil) -> XMP

自身を初期化します。

- **param** `bind` -- [Binding](../../../class/Binding.md) オブジェクトを指定します。省略した場合は、最
            後に実行した [XMP#puts](../../../method/XMP/i/puts.md)、[Kernel#xmp](../../../method/Kernel/i/xmp.md) の
            [Binding](../../../class/Binding.md) を使用します。まだ何も実行していない場合は
            [Object::TOPLEVEL_BINDING](../../../method/Object/c/TOPLEVEL_BINDING.md) を使用します。

- **SEE** [XMP#puts](../../../method/XMP/i/puts.md)
