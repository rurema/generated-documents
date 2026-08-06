# Fiddle?.realloc

### module_function def realloc(addr, size)   -> Integer

addr で指定したメモリ領域を size バイトにリサイズし、その領域を指す整数を返します。

addr には [Fiddle?.malloc](../../../method/Fiddle/m/malloc.md) で確保したメモリ領域を渡します。
また、リサイズの結果、返り値が addr と異なる場合があります。

- **param** `addr` -- リサイズしたいメモリアドレス整数
- **param** `size` -- リサイズ後のバイト数
- **SEE** [Fiddle?.malloc](../../../method/Fiddle/m/malloc.md)
