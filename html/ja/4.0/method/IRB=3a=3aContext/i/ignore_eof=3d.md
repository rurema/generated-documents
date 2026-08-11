# IRB::Context#ignore_eof=

### def ignore_eof=(val)

Ctrl-D(EOF) が入力された時に irb を終了するかどうかを val に設定します。

.irbrc ファイル中で IRB.conf[:IGNORE_EOF] を設定する事でも同様の操作が行えます。

- **param** `val` -- true を指定した場合、 Ctrl-D を無視します。false を指定した場合は Ctrl-D の入力時に irb を終了します。

- **SEE** [IRB::Context#ignore_eof](../../../method/IRB=3a=3aContext/i/ignore_eof.md)
