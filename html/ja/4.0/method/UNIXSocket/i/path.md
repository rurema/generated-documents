# UNIXSocket#path

### def path -> String

UNIX ソケットのパスを返します。

クライアント側はパスを持たないため空文字列となります。

```ruby title="例"
require 'socket'

UNIXServer.open("/tmp/s") {|serv|
  p serv.path     #=> "/tmp/s"
}
```
