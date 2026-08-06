# Prism::Result#code_units_cache

### def code_units_cache(encoding) -> Proc

バイトオフセットを指定エンコーディングのコード単位のオフセットへ変換する処理をキャッシュ付きで行う Proc を返します。
[Prism::Location](../../../class/Prism=3a=3aLocation.md) の `code_units` 系メソッドを多数の位置に対して繰り返し使う場合の高速化用です。

- **param** `encoding` -- コード単位の基準となるエンコーディング
