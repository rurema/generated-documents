# Reline.input=

### def Reline.input=(input)
{: since="2.7"}

Reline が入力の読み取りに使うオブジェクトを `input` に変更します。デフォルトは標準入力です。

- **param** `input` -- `getc` メソッドを持つオブジェクト([IO](../../../class/IO.md) など)、または `nil` を指定します。

- **raise** `TypeError` -- `input` が `nil` でも `getc` メソッドを持つオブジェクトでもない場合に発生します。
