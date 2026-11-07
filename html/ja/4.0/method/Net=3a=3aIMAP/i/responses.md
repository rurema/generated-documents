# Net::IMAP#responses

### def responses -> { String => [object] }
### def responses(type) -> [object]
### def responses {|hash| ... } -> object
### def responses(type) {|array| ... } -> object

サーバから送られてきた untagged な応答の記録を返します。

untagged な応答は種類ごとに記録されます。
応答の種類には "FLAGS", "OK", "UIDVALIDITY", "EXISTS" などがあり、この文字列がハッシュテーブルのキーとなります。
そして各種類ごとに配列が用意され、untagged な応答を受信するたびにその配列の末尾にその内容が記録されます。

ブロックを渡すと、記録をブロックに渡してブロックの値を返します。
`type` を指定するとその種類の応答の配列だけを渡します(`type` は大文字に変換して探します)。
ブロックの実行中は受信スレッドなどが記録を更新しないよう同期されます。
ブロックの外で記録のハッシュやその配列を扱うのはスレッド安全ではないため、下の例のようにブロックを渡して使います。

ブロックを渡さないときは、`type` を指定するとその種類の応答の配列を凍結した複製を返します。
`type` を指定しないときの動作は接続の設定 `responses_without_block`(`Net::IMAP::Config#responses_without_block`)で決まり、既定値の `:frozen_dup` では記録のハッシュを凍結した複製(値の配列も凍結したもの)を返します。
`:raise` を設定すると [ArgumentError](../../../class/ArgumentError.md) が発生します。


```ruby title="例"
imap.select("inbox")
p imap.responses("EXISTS", &:last)
# => 2
p imap.responses("UIDVALIDITY", &:last)
# => 968263756
```

- **param** `type` -- 応答の種類("EXISTS" など)を文字列で指定します。
- **raise** `ArgumentError` -- ブロックも `type` も渡さず、設定 `responses_without_block` が `:raise` の場合に発生します。
