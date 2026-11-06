# Net::IMAP#uid_fetch

### def uid_fetch(set, attr, changedsince: nil, partial: nil) -> [Net::IMAP::FetchData]

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
- **param** `changedsince` -- mod-sequence を整数で指定すると、mod-sequence がそれより大きいメッセージだけを対象にします。指定すると CONDSTORE 拡張([RFC:7162])を暗黙に有効にします。
- **param** `partial` -- 返す結果の範囲を [Range](../../../class/Range.md) で指定し、件数を制限します。`1..500` で `set` のうち最初の 500 件、`-500..-1` で最後の 500 件です。サーバが PARTIAL 拡張([RFC:9394])に対応している必要があります。
- **SEE** [Net::IMAP#fetch](../../../method/Net=3a=3aIMAP/i/fetch.md)
