# Process?.groups=

### module_function def groups=(gids)

補助グループを設定します。

root だけがこのメソッドを呼ぶことができます。

- **param** `gids` -- 補助グループ ID の配列を指定します。補助グループ ID は整数かグループ名を表す文字列です。

- **raise** `ArgumentError` -- 設定する補助グループ ID の数が [Process?.maxgroups](../../../method/Process/m/maxgroups.md) の数を越えている場合に発生します。

- **raise** `Errno::EXXX` -- 権限がない場合に発生します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

- **SEE** [man:setgroups(2)]
