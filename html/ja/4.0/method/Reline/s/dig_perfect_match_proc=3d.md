# Reline.dig_perfect_match_proc=

### def Reline.dig_perfect_match_proc -> Proc | nil
{: since="2.7"}
### def Reline.dig_perfect_match_proc=(proc)
{: since="2.7"}

補完候補が 1 つに確定している状態で、さらに補完しようとしたときに呼ばれる
[Proc](../../../class/Proc.md) オブジェクトを取得/設定します。`proc`
は確定した候補の文字列を引数として呼ばれます。デフォルトは `nil` です。

- **param** `proc` -- [Proc](../../../class/Proc.md) オブジェクト、または `nil` を指定します。
