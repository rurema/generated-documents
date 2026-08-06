# Net::HTTP#put

### def put(path, data, initheader = nil) -> Net::HTTPResponse

サーバ上の path にあるエンティティに対し文字列 data を
PUT で送ります。

返り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスです。

- **param** `path` -- 取得するエンティティのパスを文字列で指定します。
- **param** `data` -- 送るデータを文字列で指定します。
- **param** `initheader` -- リクエストの HTTP ヘッダをハッシュで指定します。

- **SEE** [Net::HTTP#request_put](../../../method/Net=3a=3aHTTP/i/request_put.md)

1.1 互換モードの場合は、レスポンスに応じて例外が発生します。
