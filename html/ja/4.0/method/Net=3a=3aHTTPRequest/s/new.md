# Net::HTTPRequest.new

### def Net::HTTPRequest.new(path, initheader = nil) -> Net::HTTPRequest

HTTP リクエストオブジェクトを生成します。

initheader でリクエストヘッダを指定できます。
{ヘッダフィールド名(文字列)=>その中身(文字列)} という
[Hash](../../../class/Hash.md) を用います。

- **param** `path` -- リクエストする path を文字列で与えます。
- **param** `initheader` -- リクエストヘッダをハッシュで指定します。
