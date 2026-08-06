# IO::Buffer#mapped?

### def mapped? -> bool

バッファがマップ(mapped)バッファである場合に true を返します。

マップバッファは、仮想メモリ機構でマップされたメモリ領域を参照します。
[IO::Buffer.new](../../../method/IO=3a=3aBuffer/s/new.md) に [IO::Buffer::MAPPED](../../../method/IO=3a=3aBuffer/c/MAPPED.md) を指定した場合や、大きさが [IO::Buffer::PAGE_SIZE](../../../method/IO=3a=3aBuffer/c/PAGE_SIZE.md) 以上の場合は匿名のマップになります。
[IO::Buffer.map](../../../method/IO=3a=3aBuffer/s/map.md) で作った場合はファイルに紐づいたマップになります。
