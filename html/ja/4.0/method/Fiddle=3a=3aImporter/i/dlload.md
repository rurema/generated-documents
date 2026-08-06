# Fiddle::Importer#dlload

### def dlload(*libs) -> ()

C の動的ライブラリをモジュールにインポートします。

これで取り込んだライブラリの関数は [Fiddle::Importer#extern](../../../method/Fiddle=3a=3aImporter/i/extern.md) でインポートできます。

複数のライブラリを指定できます。
ファイル名文字列を指定することでそのライブラリをインポートします。
[Fiddle::Handle](../../../class/Fiddle=3a=3aHandle.md) を渡すとそのハンドルが指しているライブラリをインポートします。

このメソッドは同じモジュールで2回呼ばないでください。


- **param** `libs` -- インポートするライブラリ
- **raise** `Fiddle::DLError` -- ライブラリのインポートができなかった場合に発生します
