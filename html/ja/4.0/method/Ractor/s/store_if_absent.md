# Ractor.store_if_absent

### def Ractor.store_if_absent(key) { ... } -> object

このメソッドを呼び出した Ractor の Ractor-local storage の key データがない場合、ブロックを評価した結果を格納します。
格納した値を返します。

- **param** `key` -- Ractor-local storage のキーを指定します。
