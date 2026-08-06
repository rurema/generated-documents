# Net::IMAP#list

### def list(refname, mailbox) -> [Net::IMAP::MailboxList] | nil

LIST コマンドを送り、クライアントから利用可能なメールボックス名の集合から引数にマッチするものすべてを返します。

詳しくは  [RFC:2060] の 6.3.8 を参照してください。

返り値は [Net::IMAP::MailboxList](../../../class/Net=3a=3aIMAP=3a=3aMailboxList.md) の配列で返します。
返り値が空集合である場合は空の配列でなく nil を返します。

- **param** `refname` -- 参照名(文字列)
- **param** `mailbox` -- 調べるメールボックスの名前(文字列)。ワイルドカードを含んでいてもかまいません。

```ruby title="例"
imap.create("foo/bar")
imap.create("foo/baz")
p imap.list("", "foo/%")
#=> [#<Net::IMAP::MailboxList attr=[:Noselect], delim="/", name="foo/">, #<Net::IMAP::MailboxList attr=[:Noinferiors, :Marked], delim="/", name="foo/bar">, #<Net::IMAP::MailboxList attr=[:Noinferiors], delim="/", name="foo/baz">]
```
