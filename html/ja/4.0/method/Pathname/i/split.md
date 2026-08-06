# Pathname#split

### def split -> Array

File.split(self.to_s) と同じです。

```ruby title="例"
require "pathname"

pathname = Pathname("/path/to/sample")
pathname.split # => [#<Pathname:/path/to>, #<Pathname:sample>]
```

- **SEE** [File.split](../../../method/File/s/split.md)
