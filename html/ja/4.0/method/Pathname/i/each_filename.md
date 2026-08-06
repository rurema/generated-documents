# Pathname#each_filename

### def each_filename {|v| ... } -> nil

self のパス名要素毎にブロックを実行します。

```ruby title="例"
require 'pathname'

Pathname.new("/foo/../bar").each_filename {|v| p v}

# => "foo"
#    ".."
#    "bar"
```
