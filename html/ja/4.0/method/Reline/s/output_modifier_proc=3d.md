# Reline.output_modifier_proc=

### def Reline.output_modifier_proc -> Proc | nil
{: since="2.7"}
### def Reline.output_modifier_proc=(proc)
{: since="2.7"}

入力内容を表示する直前に、表示用に加工する [Proc](../../../class/Proc.md)
オブジェクトを取得/設定します。シンタックスハイライトなどに利用できます。デフォルトは `nil` です。

`proc` は、第 1 引数に入力内容全体の文字列(末尾に改行を含む)を、キーワード引数
`complete` に入力が確定したかどうかの真偽値を受け取り、表示に使う文字列を返すようにします。返した文字列は表示にだけ使われ、[Reline.readline](../../../method/Reline/s/readline.md)
などの返り値は変わりません。

- **param** `proc` -- 表示用の文字列を返す [Proc](../../../class/Proc.md) オブジェクト、または `nil` を指定します。
