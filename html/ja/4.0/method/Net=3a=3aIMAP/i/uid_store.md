# Net::IMAP#uid_store

### def uid_store(set, attr, flags, unchangedsince: nil) -> [Net::IMAP::FetchData] | nil

UID STORE コマンドを送り、メールボックス内のメッセージを更新します。

set で更新するメッセージを指定します。
これには UID、UID の配列、もしくは
[Range](../../../class/Range.md) オブジェクトを渡します。

[Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したメールボックスを対象とします。

attr で何をどのように変化させるかを指定します。
以下を指定できます。
  - "FLAGS"
  - "+FLAGS"
  - "-FLAGS"
それぞれメッセージのフラグの置き換え、追加、削除を意味します。
詳しくは [RFC:2060] の 6.4.6 を参考にしてください。

返り値は更新された内容を [Net::IMAP::FetchData](../../../class/Net=3a=3aIMAP=3a=3aFetchData.md) オブジェクトの配列で返します。

- **param** `set` -- 更新するメッセージの UID
- **param** `attr` -- 更新方式(文字列)
- **param** `flags` -- 更新内容([Symbol](../../../class/Symbol.md) の配列)
- **param** `unchangedsince` -- mod-sequence を整数で指定すると、mod-sequence がそれより大きいメッセージは更新しません。更新しなかったメッセージは MODIFIED 応答コードで返されます。指定すると CONDSTORE 拡張([RFC:7162])を暗黙に有効にします。

- **SEE** [Net::IMAP#store](../../../method/Net=3a=3aIMAP/i/store.md), [Net::IMAP#uid_fetch](../../../method/Net=3a=3aIMAP/i/uid_fetch.md)
