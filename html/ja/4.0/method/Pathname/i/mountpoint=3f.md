# Pathname#mountpoint?

### def mountpoint? -> bool

self がマウントポイントであれば真を返します。

```ruby title="例"
require "pathname"

path = Pathname("/")
path.mountpoint? # => true
path = Pathname("/usr")
path.mountpoint? # => false
```
