# IRB::Context#verbose?

### def verbose? -> bool | nil

標準出力に詳細なメッセージを出力するかどうかを返します。

- **return** -- 詳細なメッセージを出力する場合は true を返します。そうでない場
        合は false か nil を返します。

設定を行っていた場合([IRB::Context#verbose](../../../method/IRB=3a=3aContext/i/verbose.md) が true か false を返す場合)は設定した通りに動作します。設定を行っていない場合は、ファイルを指定して irb を実行した場合などに true を返します。

- **SEE** [IRB::Context#verbose](../../../method/IRB=3a=3aContext/i/verbose.md), [IRB::Context#verbose=](../../../method/IRB=3a=3aContext/i/verbose=3d.md)
