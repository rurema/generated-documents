# ARGF.class#seek

### def seek(offset, whence = IO::SEEK_SET) -> 0
{: since=""}

ARGFが現在開いているファイルのファイルポインタを whence の位置から
offset だけ移動させます。 offset 位置への移動が成功すれば 0 を返します。

- **param** `offset` -- ファイルポインタを移動させるオフセットを整数で指定します。
- **param** `whence` -- [IO#seek](../../../method/IO/i/seek.md) を参照。

- **SEE** [IO#seek](../../../method/IO/i/seek.md)
