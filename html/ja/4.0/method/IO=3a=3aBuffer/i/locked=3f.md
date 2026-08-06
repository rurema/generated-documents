# IO::Buffer#locked?

### def locked? -> bool

バッファがロックされている場合に true を返します。

ロックされたバッファは大きさの変更や解放ができず、さらにロックを取得することもできません。
システムコールでバッファを使っている間に、そのバッファが移動しないことを保証するための仕組みです。

- **SEE** [IO::Buffer#locked](../../../method/IO=3a=3aBuffer/i/locked.md)
