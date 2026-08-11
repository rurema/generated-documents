# Net::HTTP#propfind

### def propfind(path, body, initheader = {'Depth' => '0'}) -> Net::HTTPResponse

サーバの path に PROPFIND リクエストをヘッダを initheader, ボディを body として送ります。

レスポンスを [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のオブジェクトで返します。

- **param** `path` -- リクエストを送るパスを文字列で与えます。
- **param** `body` -- リクエストのボディを文字列で与えます。
- **param** `initheader` -- リクエストのヘッダを「文字列=>文字列」のハッシュで与えます。

- **SEE** [Net::HTTP::Propfind](../../../class/Net=3a=3aHTTP=3a=3aPropfind.md)
