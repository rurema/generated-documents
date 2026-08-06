# Fiddle::Pointer#size

### def size        -> Integer

自身の指す領域のサイズを返します。

基本的には [Fiddle::Pointer.new](../../../method/Fiddle=3a=3aPointer/s/new.md) で指定したサイズが返されます。
[Fiddle::Pointer.to_ptr](../../../method/Fiddle=3a=3aPointer/s/to_ptr.md) で文字列を変換したときは、そのバイト数が返されます。
[Fiddle::Pointer#size=](../../../method/Fiddle=3a=3aPointer/i/size=3d.md) でこの値を変更できます。
