# Reline.output=

### def Reline.output=(output)
{: since="2.7"}

Reline が表示に使うオブジェクトを `output` に変更します。デフォルトは標準出力です。

- **param** `output` -- `write` メソッドを持つオブジェクト([IO](../../../class/IO.md) など)、または `nil` を指定します。

- **raise** `TypeError` -- `output` が `nil` でも `write` メソッドを持つオブジェクトでもない場合に発生します。
