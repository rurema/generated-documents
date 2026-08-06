# Reline.filename_quote_characters=

### def Reline.filename_quote_characters -> String
{: since="2.7"}
### def Reline.filename_quote_characters=(string)
{: since="2.7"}

ファイル名の補完の際にクオートするための文字の集合を取得/設定します。デフォルトは `""` です。

設定値は保持されますが、現在の reline の補完処理では使用されません。

- **param** `string` -- 文字列を指定します。
