# Reline.special_prefixes

### def Reline.special_prefixes -> String
{: since="2.7"}
### def Reline.special_prefixes=(string)
{: since="2.7"}

補完対象の単語の一部として扱う接頭辞の文字の集合を取得/設定します。デフォルトは `""` です。

設定値は保持されますが、現在の reline の補完処理では使用されません。

- **param** `string` -- 文字列を指定します。
