# Fiddle::MemoryView.export

### def Fiddle::MemoryView.export(target) {|view| ... } -> object

`target` がエクスポートしたメモリビューを示す [Fiddle::MemoryView](../../../class/Fiddle=3a=3aMemoryView.md) を作り、ブロック引数として渡します。ブロックが終了すると [#release](../../../method/Fiddle=3a=3aMemoryView/i/release.md) を呼び、メモリビューを解放します。

ブロックの結果を返します。

- **param** `target` -- メモリビューをエクスポートするオブジェクトを指定します。

- **raise** `ArgumentError` -- メモリビューを取得できない場合に発生します。

- **raise** `LocalJumpError` -- ブロックを渡さなかった場合に発生します。
