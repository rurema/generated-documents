# Gem::Package::TarReader#rewind

### def rewind -> Integer

自身に関連付けられた IO のファイルポインタを先頭に移動します。または、
[Gem::Package::TarReader.new](../../../method/Gem=3a=3aPackage=3a=3aTarReader/s/new.md) したときの [IO#pos](../../../method/IO/i/pos.md) にファイルポインタを先頭に移動します。

[Gem::Package::TarReader#each](../../../method/Gem=3a=3aPackage=3a=3aTarReader/i/each.md) の実行中に呼ばないようにしてください。

- **return** -- 戻った位置を返します。

- **raise** `Gem::Package::NonSeekableIO` -- 自身に関連付けられた IO がシーク可能
                                   でない場合に発生します。
