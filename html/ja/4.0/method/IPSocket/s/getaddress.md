# IPSocket.getaddress

### def IPSocket.getaddress(host) -> String

ホスト名からホストのアドレスを返します。ホストのアドレスは文字列は octet decimal の文字列 (例: 127.0.0.1) です。

- **param** `host` -- ホスト名を文字列で指定します。

```ruby title="例"
require 'socket'

p IPSocket.getaddress("www.ruby-lang.org")        # => "210.163.138.100"
```

### def IPSocket.getaddress(host) -> String

[IPSocket.getaddress](../../../method/IPSocket/s/getaddress.md) を置きかえ、
[resolv](../../../library/resolv.md) ライブラリを使い名前解決します。

- **param** `host` -- ホスト名を指定します。
- **raise** `SocketError` -- 名前解決に失敗した場合に発生します。
