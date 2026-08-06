# IO::Buffer#valid?

### def valid? -> bool

バッファがアクセス可能な場合に true を返します。

別のバッファや文字列の一部を参照している([IO::Buffer#slice](../../../method/IO=3a=3aBuffer/i/slice.md) で作った)バッファは、参照元が解放されたり別のアドレスに再確保されたりすると、アクセスできなくなります。
