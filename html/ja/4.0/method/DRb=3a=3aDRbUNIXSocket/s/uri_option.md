# DRb::DRbUNIXSocket.uri_option

### def DRb::DRbUNIXSocket.uri_option(uri, config) -> [String, String | nil]

uri をパースして [uri, option] という配列を返します。

- **param** `uri` -- "drbunix:パス" または "drbunix:パス?オプション" という形式の URI を指定します。

- **param** `config` -- 接続の設定を [Hash](../../../class/Hash.md) で指定します。

```ruby
require 'drb/unix'
p DRb::DRbUNIXSocket.uri_option("drbunix:/tmp/foo?opt1", {}) # => ["drbunix:/tmp/foo", "opt1"]
```
