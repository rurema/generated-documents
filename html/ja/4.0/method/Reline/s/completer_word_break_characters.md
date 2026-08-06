# Reline.completer_word_break_characters

### def Reline.completer_word_break_characters -> String
{: since="2.7"}
### def Reline.completer_word_break_characters=(string)
{: since="2.7"}

ユーザの入力の補完を行う際、単語の区切りを示す文字の集合を取得/設定します。

デフォルトは ``" \t\n`><=;|&{("``(半角スペースを含む)です。

- **param** `string` -- 文字列を指定します。
