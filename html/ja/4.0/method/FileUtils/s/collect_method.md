# FileUtils.collect_method

### def FileUtils.collect_method(opt) -> Array

与えられたオプションを持つメソッド名の配列を返します。

- **param** `opt` -- オプション名をシンボルで指定します。

```ruby
require 'fileutils'
p FileUtils.collect_method(:preserve) # => ["cp", "cp_r", "copy", "install"]
```
