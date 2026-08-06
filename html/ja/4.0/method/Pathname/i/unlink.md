# Pathname#unlink

### def unlink -> Integer
### def delete -> Integer

self が指すディレクトリあるいはファイルを削除します。

```ruby title="例"
require "pathname"

pathname = Pathname("/path/to/sample")
pathname.exist? # => true
pathname.unlink # => 1
pathname.exist? # => false
```
