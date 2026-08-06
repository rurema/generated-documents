# Reline.completion_append_character

### def Reline.completion_append_character -> String | nil
{: since="2.7"}
### def Reline.completion_append_character=(string)
{: since="2.7"}

補完が 1 つの候補に確定したときに、末尾に付加する文字を取得/設定します。デフォルトは
`nil`(何も付加しない)です。

1 文字しか指定できないため、`string` に 2 文字以上の文字列を指定した場合は最初の
1 文字だけが使われます。半角スペース `" "` などの単語を区切る文字を指定すれば、補完後に続けて入力する際に便利です。

- **param** `string` -- 付加する 1 文字を指定します。`nil` を指定すると何も付加しません。
