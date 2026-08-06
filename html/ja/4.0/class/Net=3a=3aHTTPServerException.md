# class Net::HTTPServerException < Net::ProtoServerError

HTTP ステータスコード 4xx を受け取ったという例外です。

クライアントのリクエストに誤りがあるか、サーバにリクエストを拒否された(認証が必要、リソースが存在しないなどで)ことを示します。

[Net::HTTPServerException](../class/Net=3a=3aHTTPServerException.md) は Ruby 2.6 から deprecated になりました。
[Net::HTTPClientException](../class/Net=3a=3aHTTPClientException.md) を使用してください。
