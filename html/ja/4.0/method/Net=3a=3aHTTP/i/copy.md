# Net::HTTP#copy

### def copy(path, initheader = nil) -> Net::HTTPResponse

サーバの path に COPY リクエストをヘッダを initheader として送ります。

レスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のオブジェクトで返します。

- **param** `path` -- リクエストを送るパスを文字列で与えます。
- **param** `initheader` -- リクエストのヘッダを「文字列=>文字列」のハッシュで与えます。

- **SEE** [Net::HTTP::Copy](../../../class/Net=3a=3aHTTP=3a=3aCopy.md)
