# Net::HTTP#patch

### def patch(path, data, initheader=nil, dest=nil) -> Net::HTTPResponse
### def patch(path, data, initheader=nil, dest=nil) {|body_segment| ... } -> Net::HTTPResponse

サーバ上の path にあるエンティティに対し文字列 data を
PATCH リクエストで送ります。

返り値は [Net::HTTPResponse](../../../class/Net=3a=3aHTTPResponse.md) のインスタンスです。

ブロックと一緒に呼びだされたときはエンティティボディを少しずつ文字列としてブロックに与えます。このとき戻り値の HTTPResponse オブジェクトは有効な body を持ちません。


Dest は時代遅れの引数です。利用しないでください。
dest を指定した場合にはボディを少しずつ取得して順次「dest << ボディの断片」を実行します。

- **param** `path` -- POST先のパスを文字列で指定します。
- **param** `header` -- リクエストの HTTP ヘッダをハッシュで指定します。
- **param** `dest` -- 利用しないでください。
