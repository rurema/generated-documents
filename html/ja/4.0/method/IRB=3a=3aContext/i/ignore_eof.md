# IRB::Context#ignore_eof

### def ignore_eof  -> bool
### def ignore_eof? -> bool

Ctrl-D(EOF) が入力された時に irb を終了するかどうかを返します。

true の時は Ctrl-D を無視します。false の時は irb を終了します。

デフォルト値は false です。

- **SEE** [IRB::Context#ignore_eof=](../../../method/IRB=3a=3aContext/i/ignore_eof=3d.md)
