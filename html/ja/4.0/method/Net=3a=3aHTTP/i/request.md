# Net::HTTP#request

### def request(request, data = nil) -> Net::HTTPResponse
### def request(request, data = nil) {|response| .... } -> Net::HTTPResponse

[Net::HTTPRequest](../../../class/Net=3a=3aHTTPRequest.md) オブジェクト request をサーバに送信します。

POST/PUT の時は data も与えられます 
(GET/HEAD などで  data を与えると 
[ArgumentError](../../../class/ArgumentError.md) を発生します)。

ブロックとともに呼びだされたときはソケットからボディを読みこまずに [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md)
オブジェクトをブロックに与えます。

- **param** `request` -- リクエストオブジェクトを与えます。
- **param** `data` -- リクエストのボディを文字列で与えます。

- **raise** `ArgumentError` -- dataを与えるべきでないリクエストでdataを与えた場合に発生します。
- **SEE** [Net::HTTP#send_request](../../../method/Net=3a=3aHTTP/i/send_request.md)
