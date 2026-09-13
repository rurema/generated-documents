# Net::HTTPResponse#decode_content

### def decode_content -> bool
### def decode_content=(bool)

エンティティボディの `Content-Encoding:` を自動的に展開するかどうかを取得・設定します。

ユーザがリクエストヘッダフィールド `Accept-Encoding:` を明示的に設定・削除していなかった場合に、自動的に真が設定されます。真の場合、[Net::HTTPResponse#read_body](../../../method/Net=3a=3aHTTPResponse/i/read_body.md) などでボディを読み込む際に、レスポンスの `Content-Encoding:` が gzip や deflate であればボディを透過的に展開します。

- **param** `bool` -- `Content-Encoding:` を自動的に展開するかどうかを真偽値で指定します。
- **SEE** [Net::HTTPGenericRequest#decode_content](../../../method/Net=3a=3aHTTPGenericRequest/i/decode_content.md)
