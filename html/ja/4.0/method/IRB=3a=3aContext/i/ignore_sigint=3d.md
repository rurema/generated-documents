# IRB::Context#ignore_sigint=

### def ignore_sigint=(val)

Ctrl-C が入力された時に irb を終了するかどうかを val に設定します。

.irbrc ファイル中で IRB.conf[:IGNORE_SIGINT] を設定する事でも同様の操作が行えます。

- **param** `val` -- false を指定した場合、Ctrl-C の入力時に irb を終了します。
           true を指定した場合、Ctrl-C の入力時に以下のように動作します。

- **入力中**:
    これまで入力したものをキャンセルしトップレベルに戻る.
- **実行中**:
    実行を中止する.

- **SEE** [IRB::Context#ignore_sigint](../../../method/IRB=3a=3aContext/i/ignore_sigint.md)
