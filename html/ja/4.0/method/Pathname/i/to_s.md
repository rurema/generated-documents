# Pathname#to_s

### def to_s   -> String

パス名を文字列で返します。

```ruby title="例"
require 'pathname'

path = Pathname.new("/tmp/hogehoge")
File.open(path)
```
