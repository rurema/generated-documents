# Reline.completion_quote_character

### def Reline.completion_quote_character -> String | nil
{: since="2.7"}

ユーザ入力の補完中([Reline.completion_proc](../../../method/Reline/s/completion_proc.md) の呼び出し中)に、開いたまま閉じられていないクオート文字([Reline.completer_quote_characters](../../../method/Reline/s/completer_quote_characters.md)
のいずれか)があればそれを返します。補完中以外は `nil` を返します。
