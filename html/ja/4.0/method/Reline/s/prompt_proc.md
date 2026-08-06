# Reline.prompt_proc

### def Reline.prompt_proc -> Proc | nil
{: since="2.7"}
### def Reline.prompt_proc=(proc)
{: since="2.7"}

[Reline.readmultiline](../../../method/Reline/s/readmultiline.md) での複数行編集時に、行ごとのプロンプトを動的に生成する
[Proc](../../../class/Proc.md) オブジェクトを取得/設定します。デフォルトは `nil` です。

`proc` は、入力中の各行の文字列を要素とする配列を受け取り、行ごとのプロンプト文字列の配列を返すようにします。[Reline.readline](../../../method/Reline/s/readline.md)
による一行入力では使われません。

- **param** `proc` -- プロンプトの配列を返す [Proc](../../../class/Proc.md) オブジェクト、または `nil` を指定します。
