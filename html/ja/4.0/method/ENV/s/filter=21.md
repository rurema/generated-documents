# ENV.filter!

### def ENV.keep_if {|key, value| ... } -> ENV
### def ENV.select! {|key, value| ... } -> ENV | nil
### def ENV.filter! {|key, value| ... } -> ENV | nil
### def ENV.keep_if -> Enumerator
### def ENV.select! -> Enumerator
### def ENV.filter! -> Enumerator

キーと値を引数としてブロックを評価した結果が真であるような要素を環境変数に残します。

keep_if は常に self を返します。
select! と filter! はオブジェクトが変更された場合に self を、されていない場合に nil を返します。

ブロックが省略された場合には [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [ENV.delete_if](../../../method/ENV/s/delete_if.md),[ENV.reject!](../../../method/ENV/s/reject=21.md), [Hash#keep_if](../../../method/Hash/i/keep_if.md), [Hash#select!](../../../method/Hash/i/select=21.md),
