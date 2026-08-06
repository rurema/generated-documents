# Prism::Node#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチのハッシュパターン(`case node; in {value:}`)で使われます。ノードの各フィールドをキーに持つハッシュを返します。

- **param** `keys` -- 取り出したいキーの配列。すべて取り出す場合は
       nil を指定します。
