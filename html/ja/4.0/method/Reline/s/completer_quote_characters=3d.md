# Reline.completer_quote_characters=

### def Reline.completer_quote_characters -> String
{: since="2.7"}
### def Reline.completer_quote_characters=(string)
{: since="2.7"}

ユーザの入力の補完を行う際、クオートとみなす文字の集合を取得/設定します。クオートの内側では、[Reline.completer_word_break_characters=](../../../method/Reline/s/completer_word_break_characters=3d.md)
で指定した文字も通常の文字として扱われます。

デフォルトは `"'`(ダブルクオートとシングルクオート)です。

- **param** `string` -- 文字列を指定します。
