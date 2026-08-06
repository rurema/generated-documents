# class IO::Buffer::InvalidatedError < RuntimeError

無効になった [IO::Buffer](../class/IO=3a=3aBuffer.md) を使用しようとした場合に発生します。

バッファが指しているメモリ領域が既に解放されているなど、そのバッファがもう使用できない状態になっていることを表します。

- **SEE** [IO::Buffer](../class/IO=3a=3aBuffer.md)
