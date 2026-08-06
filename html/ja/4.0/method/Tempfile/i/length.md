# Tempfile#length

### def length -> Integer
### def size -> Integer

テンポラリファイルのサイズを返します。

```ruby
require "tempfile"
tf = Tempfile.new("foo")
tf.print("bar,ugo")
p tf.size # => 7
tf.close
p tf.size # => 7
```
