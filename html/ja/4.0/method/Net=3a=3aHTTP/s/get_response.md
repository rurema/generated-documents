# Net::HTTP.get_response

### def Net::HTTP.get_response(uri) -> Net::HTTPResponse
### def Net::HTTP.get_response(host, path = nil, port = nil) -> Net::HTTPResponse

指定した対象に GET リクエストを送り、そのレスポンスを
[Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) として返します。

対象の指定方法は [URI](../../../class/URI.md) で指定するか、
(host, path, port) で指定するかのいずれかです。

- **param** `uri` -- データの取得対象を [URI](../../../class/URI.md) で指定します。
- **param** `host` -- 接続先のホストを文字列で指定します。
- **param** `path` -- データの存在するパスを文字列で指定します。
- **param** `port` -- 接続するポートを整数で指定します。
- **SEE** [Net::HTTP#get](../../../method/Net=3a=3aHTTP/i/get.md)
