# Net::IMAP#store

### def store(set, attr, flags) -> [Net::IMAP::FetchData] | nil

STORE コマンドを送り、メールボックス内のメッセージを更新します。

set で更新するメッセージを指定します。
これには sequence number、sequence number の配列、もしくは
[Range](../../../class/Range.md) オブジェクトを渡します。

[Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したメールボックスを対象とします。

attr で何をどのように変化させるかを指定します。
以下を指定できます。
  - "FLAGS"
  - "+FLAGS"
  - "-FLAGS"
それぞれメッセージのフラグの置き換え、追加、削除を意味します。
詳しくは [RFC:2060] の 6.4.6 を参考にしてください。

flags には シンボルの配列で置き換え、追加もしくは削除されるフラグを指定します。

返り値は更新された内容を [Net::IMAP::FetchData](../../../class/Net=3a=3aIMAP=3a=3aFetchData.md) オブジェクトの配列で返します。

```ruby title="例"
p imap.store(6..8, "+FLAGS", [:Deleted])
#=> [#<Net::IMAP::FetchData seqno=6, attr={"FLAGS"=>[:Seen, :Deleted]}>, #<Net::IMAP::FetchData seqno=7, attr={"FLAGS"=>[:Seen, :Deleted]}>, #<Net::IMAP::FetchData seqno=8, attr={"FLAGS"=>[:Seen, :Deleted]}>]
```

- **param** `set` -- 更新するメッセージのsequence number
- **param** `attr` -- 更新方式(文字列)
- **param** `flags` -- 更新内容([Symbol](../../../class/Symbol.md) の配列)
- **SEE** [Net::IMAP#uid_store](../../../method/Net=3a=3aIMAP/i/uid_store.md), [Net::IMAP#fetch](../../../method/Net=3a=3aIMAP/i/fetch.md)
