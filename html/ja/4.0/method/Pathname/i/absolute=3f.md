# Pathname#absolute?

### def absolute? -> bool

self が絶対パス指定であれば真を返します。

```ruby title="例"
require "pathname"

pathname = Pathname("/path/to/example.rb")
pathname.absolute? # => true
pathname = Pathname("../")
pathname.absolute? # => false
```
