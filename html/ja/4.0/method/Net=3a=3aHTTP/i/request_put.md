# Net::HTTP#request_put

### def request_put(path, data, initheader = nil) -> Net::HTTPResponse
### def request_put(path, data, initheader = nil) {|response| .... } -> Net::HTTPResponse
### def put2(path, data, initheader = nil) -> Net::HTTPResponse
### def put2(path, data, initheader = nil) {|response| .... } -> Net::HTTPResponse

サーバ上の path にあるエンティティに対し文字列 data を
PUT で送ります。

返り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスです。

ブロックとともに呼び出されたときは、ボディをソケットから読み出す前に、接続を維持した状態で [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md)
オブジェクトをブロックに渡します。

- **param** `path` -- 取得するエンティティのパスを文字列で指定します。
- **param** `data` -- 送るデータを文字列で指定します。
- **param** `initheader` -- リクエストの HTTP ヘッダをハッシュで指定します。

put2 は時代遅れなので使わないでください。

- **SEE** [Net::HTTP#put](../../../method/Net=3a=3aHTTP/i/put.md)
