# IO::Buffer::PAGE_SIZE

### const PAGE_SIZE -> Integer

OS のページサイズをバイト数で表した値です。

[IO::Buffer.new](../../../method/IO=3a=3aBuffer/s/new.md) は、size がこの値以上の場合に仮想メモリ機構を用いてバッファを確保します。

値は環境依存です。
