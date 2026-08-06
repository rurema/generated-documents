# IO::Buffer::LOCKED

### const LOCKED -> Integer

バッファがロックされていることを表すフラグです。

ロックされている間はバッファの解放やリサイズができません。
バッファは [IO::Buffer#locked](../../../method/IO=3a=3aBuffer/i/locked.md) のブロックを実行している間ロックされます。
ロックされているかどうかは [IO::Buffer#locked?](../../../method/IO=3a=3aBuffer/i/locked=3f.md) で調べられます。
