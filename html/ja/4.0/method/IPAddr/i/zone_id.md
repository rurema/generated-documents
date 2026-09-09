# IPAddr#zone_id

### def zone_id -> String | nil
### def zone_id=(zid)

IPv6 アドレスのゾーン ID を取得・設定します。ゾーン ID は `"%eth0"` のように `%` から始まる文字列で、リンクローカルアドレスなどで通信に使うネットワークインターフェースを指定するために使われます。

- **param** `zid` -- 設定するゾーン ID です。`%` で始まる文字列か、ゾーン ID を削除する場合は nil を指定します。

- **return** -- ゾーン ID が設定されていない場合は nil を返します。

- **raise** `IPAddr::InvalidAddressError` -- `self` が IPv6 アドレスでない場合に発生します(取得・設定のどちらでも発生します)。

- **raise** `IPAddr::InvalidAddressError` -- `zone_id=` において、`zid` が nil でも `%` から始まる文字列でもない場合に発生します。

```ruby title="例"
require "ipaddr"
a = IPAddr.new("fe80::1%eth0")
p a.zone_id            # => "%eth0"

b = IPAddr.new("fe80::1")
b.zone_id = "%eth1"
p b.zone_id            # => "%eth1"
p b.to_s               # => "fe80::1%eth1"
```

- **SEE** [IPAddr#to_s](../../../method/IPAddr/i/to_s.md)
