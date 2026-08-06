# Pathname#atime

### def atime -> Time

File.atime(self.to_s) を渡したものと同じです。

```ruby title="例"
require "pathname"

pathname = Pathname("testfile")
pathname.atime # => 2018-12-18 20:58:13 +0900
```

- **SEE** [File.atime](../../../method/File/s/atime.md)
