# Tempfile#path

### def path -> String | nil

テンポラリファイルのパス名を返します。

[Tempfile#close!](../../../method/Tempfile/i/close=21.md) を実行後だった場合にはnilを返します。

```ruby
require "tempfile"
tf = Tempfile.new("hoo")
p tf.path # => "/tmp/hoo.10596.0"
tf.close!
p tf.path # => nil
```
