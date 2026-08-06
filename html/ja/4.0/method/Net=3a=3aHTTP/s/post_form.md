# Net::HTTP.post_form

### def Net::HTTP.post_form(uri, params) -> Net::HTTPResponse

[URI](../../../class/URI.md) で指定した対象に フォームのデータを HTTP で 
POST します。

送るデータは params に文字列から文字列への [Hash](../../../class/Hash.md) として渡します。

- **param** `uri` -- POST する対象を [URI](../../../class/URI.md) で指定します。
- **param** `params` -- POST するデータです。
