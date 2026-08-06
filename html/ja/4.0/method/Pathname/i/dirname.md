# Pathname#dirname

### def dirname -> Pathname

Pathname.new(File.dirname(self.to_s)) と同じです。

```ruby title="例"
require "pathname"

p Pathname('/usr/bin/shutdown').dirname # => #<Pathname:/usr/bin>
```

- **SEE** [File.dirname](../../../method/File/s/dirname.md)
