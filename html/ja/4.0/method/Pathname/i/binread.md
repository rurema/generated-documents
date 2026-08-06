# Pathname#binread

### def binread(*args) -> String | nil

IO.binread(self.to_s, *args)と同じです。

```ruby title="例"
require "pathname"

pathname = Pathname("testfile")
pathname.binread           # => "This is line one\nThis is line two\nThis is line three\nAnd so on...\n"
pathname.binread(20)       # => "This is line one\nThi"
pathname.binread(20, 10)   # => "ne one\nThis is line "
```

- **SEE** [IO.binread](../../../method/IO/s/binread.md)
