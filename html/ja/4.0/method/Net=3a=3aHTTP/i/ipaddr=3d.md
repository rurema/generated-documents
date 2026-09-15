# Net::HTTP#ipaddr=

### def ipaddr -> String | nil
{: since="2.7.0"}
### def ipaddr=(addr)
{: since="2.7.0"}

接続先の IP アドレスを取得・設定します。

セッションが開始されていない場合は、`ipaddr=` で設定した値 (未設定なら nil) を返します。セッションが開始されている場合は、実際に接続したソケットの IP アドレスを返します。

`ipaddr=` はセッションが開始された後には設定できません。

- **param** `addr` -- 接続先の IP アドレスを文字列で指定します。
- **raise** `IOError` -- セッション開始後に `ipaddr=` で値を変更しようとすると発生します。

```ruby title="例"
require 'net/http'

http = Net::HTTP.new('www.example.com')
http.ipaddr         # => nil
http.ipaddr = '172.67.155.76'
http.ipaddr         # => "172.67.155.76"
```

- **SEE** [Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md)
