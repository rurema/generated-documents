# rb_ary_to_ary

### VALUE rb_ary_to_ary(VALUE obj)

オブジェクトを強制的に配列にします。
まず `obj` の `to_ary` メソッドを試し、結果があればそれを返します。
そうでなければ、`obj` だけを要素とする長さ 1 の配列を作って返します。

- **param** `obj` -- 変換するオブジェクトです。
- **return** -- `obj` を表す配列です。
