# Net::IMAP#uid_sort

### def sort(sort_keys, search_keys, charset) -> [Integer]
### def uid_sort(sort_keys, search_keys, charset) -> [Integer]

SORT コマンド送り、メールボックス内のメッセージをソートした結果を返します。

SORT コマンドは [RFC:5256] で定義されています。
詳しくはそちらを参照してください。
このコマンドは [Net::IMAP#capability](../../../method/Net=3a=3aIMAP/i/capability.md) の返り値を見ることで利用可能かどうか判断できます。

sort_keys にはソート順を決めるキーを文字列の配列で指定します。
"ARRIVAL", "CC", "FROM", "TO", "SUBJECT" などが指定できます。
詳しくは [RFC:5265] の BASE.6.4.SORT の所を見てください。

search_key には検索条件を渡します。[Net::IMAP#search](../../../method/Net=3a=3aIMAP/i/search.md) とほぼ同じです。この条件にマッチするメッセージのみがソートされます。

[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは
[Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したメールボックスを対象とします。

返り値は message sequence number の配列を返します。

```ruby title="例"
p imap.sort(["FROM"], ["ALL"], "US-ASCII")
# => [1, 2, 3, 5, 6, 7, 8, 4, 9]
p imap.sort(["DATE"], ["SUBJECT", "hello"], "US-ASCII")
# => [6, 7, 8, 1]
```

- **param** `sort_key` -- ソート順のキー(文字列配列)
- **param** `search_key` -- 検索条件(文字列配列)
- **param** `charset` -- 検索条件の解釈に用いるCHARSET名(文字列)
