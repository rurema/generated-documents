# Net::HTTP#unlock

### def unlock(path, body, initheader = nil) -> Net::HTTPResponse

サーバの path に UNLOCK リクエストをヘッダを initheader, ボディを body として送ります。

レスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のオブジェクトで返します。

- **param** `path` -- リクエストを送るパスを文字列で与えます。
- **param** `body` -- リクエストのボディを文字列で与えます。
- **param** `initheader` -- リクエストのヘッダを「文字列=>文字列」のハッシュで与えます。
- **SEE** [Net::HTTP::Unlock](../../../class/Net=3a=3aHTTP=3a=3aUnlock.md)
