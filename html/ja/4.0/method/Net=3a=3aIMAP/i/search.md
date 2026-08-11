# Net::IMAP#search

### def search(keys, charset = nil) -> [Integer]

SEARCH コマンドを送り、条件に合うメッセージの message sequence number
を配列で返します。

[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したメールボックスを検索対象とします。

検索の条件は key に文字列の1次元配列もしくは文字列で渡します。

検索条件は "SUBJECT", "FROM" などを用いることができます。
詳しくは [RFC:2060] の 6.4.4 を見てください。

```ruby title="例"
p imap.search(["SUBJECT", "hello"])
# => [1, 6, 7, 8]
p imap.search(["SUBJECT", "hello", "FROM", "foo@example.com"])
# => [6, 7]
p imap.search('SUBJECT "hello"')
# => [1, 6, 7, 8]
```

- **param** `key` -- 検索キー(文字列の配列もしくは文字列)
- **param** `charset` -- 検索に用いるcharset
- **SEE** [Net::IMAP#search](../../../method/Net=3a=3aIMAP/i/search.md)
