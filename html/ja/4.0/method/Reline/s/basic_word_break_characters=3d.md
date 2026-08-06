# Reline.basic_word_break_characters=

### def Reline.basic_word_break_characters -> String
{: since="2.7"}
### def Reline.basic_word_break_characters=(string)
{: since="2.7"}

単語の区切りを示す文字の集合を取得/設定します。

デフォルトは ``" \t\n`><=;|&{("``(半角スペースを含む)です。

設定値は保持されますが、現在の reline の補完処理では使用されません。補完の単語の区切りには
[Reline.completer_word_break_characters](../../../method/Reline/s/completer_word_break_characters.md) が使われます。

- **param** `string` -- 文字列を指定します。
