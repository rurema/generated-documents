# Tempfile#close!

### def close! -> nil

テンポラリファイルをクローズし、すぐに削除します。

```ruby
require "tempfile"
tf = Tempfile.open("bar")
path = tf.path
tf.close!
p FileTest.exist?(path) # => false
```
