# Fiddle::Pointer.malloc

### def Fiddle::Pointer.malloc(size, free = nil)   -> Fiddle::Pointer

与えられた長さ size のメモリ領域を確保し、それを表す Pointer オブジェクトを生成して返します。

- **param** `size` -- 確保したいメモリ領域のサイズを整数で指定します。

- **param** `free` -- GC 時に呼ばれる Pointer オブジェクトの free 関数を 
       [Fiddle::Function](../../../class/Fiddle=3a=3aFunction.md) オブジェクトか整数で指定します。
