# Net::IMAP#responses

### def responses -> { String => [object] }

サーバから送られてきた untagged な応答の記録を返します。

untagged な応答は種類ごとに記録されます。
応答の種類には "FLAGS", "OK", "UIDVALIDITY", "EXISTS" などがあり、この文字列がハッシュテーブルのキーとなります。
そして各種類ごとに配列が用意され、untagged な応答を受信するたびにその配列の末尾にその内容が記録されます。

```ruby title="例"
imap.select("inbox")
p imap.responses["EXISTS"].last
#=> 2
p imap.responses["UIDVALIDITY"].last
#=> 968263756
```
