# Addrinfo#unix_path

### def unix_path -> String

Unix domain socket の path を文字列で返します。

```ruby
require 'socket'

p Addrinfo.unix("/tmp/sock").unix_path     #=> "/tmp/sock"
```

- **raise** `SocketError` -- アドレスが Unix domain socket のものでない場合に発生します
