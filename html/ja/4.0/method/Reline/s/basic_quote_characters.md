# Reline.basic_quote_characters

### def Reline.basic_quote_characters -> String
{: since="2.7"}
### def Reline.basic_quote_characters=(string)
{: since="2.7"}

クオートとみなす文字の集合を取得/設定します。

デフォルトは `"'`(ダブルクオートとシングルクオート)です。

設定値は保持されますが、現在の reline の補完処理では使用されません。クオートの判定には
[Reline.completer_quote_characters](../../../method/Reline/s/completer_quote_characters.md) が使われます。

- **param** `string` -- 文字列を指定します。
