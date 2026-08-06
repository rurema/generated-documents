# Pathname#expand_path

### def expand_path(default_dir = '.') -> Pathname

Pathname.new(File.expand_path(self.to_s, *args)) と同じです。

- **param** `default_dir` -- self が相対パスであれば default_dir を基準に展開されます。

```ruby title="例"
require "pathname"

path = Pathname("testfile")
p Pathname.pwd           # => #<Pathname:/path/to>
path.expand_path         # => #<Pathname:/path/to/testfile>
path.expand_path("../")  # => #<Pathname:/path/testfile>
```

- **SEE** [File.expand_path](../../../method/File/s/expand_path.md)
