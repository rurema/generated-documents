# Net::HTTP#options

### def options(path, initheader = nil) -> Net::HTTPResponse

サーバの path に OPTIONS リクエストをヘッダが initheader として送り、レスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のオブジェクトで返します。

- **param** `path` -- リクエストを送るパスを文字列で与えます。
- **param** `initheader` -- リクエストのヘッダを「文字列=>文字列」の
                  ハッシュで与えます。

- **SEE** [Net::HTTP::Options](../../../class/Net=3a=3aHTTP=3a=3aOptions.md)
