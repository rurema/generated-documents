# Net::IMAP#uid_fetch

### def uid_fetch(set, attr) -> [Net::IMAP::FetchData]

UID FETCH コマンドを送り、メールボックス内のメッセージに関するデータを取得します。

[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したメールボックスを対象とします。

set で対象とするメッセージを指定します。
これには UID、UID の配列、もしくは
[Range](../../../class/Range.md) オブジェクトを渡します。
attr には取得するアトリビュートを文字列の配列で渡してください。
指定可能なアトリビュートについては [Net::IMAP::FetchData#attr](../../../method/Net=3a=3aIMAP=3a=3aFetchData/i/attr.md) 
を見てください。

- **param** `set` -- 処理対象のメッセージの UID
- **param** `attr` -- アトリビュート(文字列配列)
- **SEE** [Net::IMAP#fetch](../../../method/Net=3a=3aIMAP/i/fetch.md)
