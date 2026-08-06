# Reline.pre_input_hook=

### def Reline.pre_input_hook -> Proc | nil
{: since="2.7"}
### def Reline.pre_input_hook=(proc)
{: since="2.7"}

[Reline.readline](../../../method/Reline/s/readline.md) や [Reline.readmultiline](../../../method/Reline/s/readmultiline.md)
が入力の受け付けを始める直前に呼ばれる [Proc](../../../class/Proc.md)
オブジェクトを取得/設定します。`proc` は引数なしで呼ばれます。デフォルトは `nil` です。

- **param** `proc` -- [Proc](../../../class/Proc.md) オブジェクト、または `nil` を指定します。
