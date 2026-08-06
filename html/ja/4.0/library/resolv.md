# library resolv

DNSによる名前解決を行うライブラリです。 Ruby で書かれているため thread-aware であり、並列に多くのホスト名を解決できます。

DNS モジュールを使うことで、さまざまなリソースを直接ルックアップできます。

なお、単にホスト名から IP アドレスを得たいだけであれば、
[socket](../library/socket.md) ライブラリの [IPSocket.getaddress](../method/IPSocket/s/getaddress.md) などが使用できます。

```ruby title="例:"
require "resolv"
Resolv.getaddress("www.ruby-lang.org")
Resolv.getname("210.251.121.214").to_s
Resolv::DNS.new.getresources("www.ruby-lang.org", Resolv::DNS::Resource::IN::A).collect {|r| r.address}
Resolv::DNS.new.getresources("ruby-lang.org", Resolv::DNS::Resource::IN::MX).collect {|r| [r.exchange.to_s, r.preference]}
```

### Bugs
NIS はサポートされていません。
