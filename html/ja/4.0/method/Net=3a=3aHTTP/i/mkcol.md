# Net::HTTP#mkcol

### def mkcol(path, body, initheader = nil) -> Net::HTTPResponse

サーバの path に MKCOL リクエストをヘッダが initheader, ボディを body として送ります。

レスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のオブジェクトで返します。

- **param** `path` -- リクエストを送るパスを文字列で与えます。
- **param** `body` -- リクエストのボディを文字列で与えます。
- **param** `initheader` -- リクエストのヘッダを「文字列=>文字列」の
                  ハッシュで与えます。

- **SEE** [Net::HTTP::Mkcol](../../../class/Net=3a=3aHTTP=3a=3aMkcol.md)
