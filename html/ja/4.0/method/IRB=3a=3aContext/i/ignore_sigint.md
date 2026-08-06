# IRB::Context#ignore_sigint

### def ignore_sigint  -> bool
### def ignore_sigint? -> bool

Ctrl-C が入力された時に irb を終了するかどうかを返します。

false の時は irb を終了します。true の時は以下のように動作します。

- **入力中**:
    これまで入力したものをキャンセルしトップレベルに戻る.
- **実行中**:
    実行を中止する.

デフォルト値は true です。

- **SEE** [IRB::Context#ignore_sigint=](../../../method/IRB=3a=3aContext/i/ignore_sigint=3d.md)
