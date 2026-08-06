# Pathname#empty?

### def empty? -> bool

ディレクトリに対しては Dir.empty?(self.to_s) と同じ、他に対しては FileTest.empty?(self.to_s) と同じです。

```ruby title="例 ディレクトリの場合"
require "pathname"
require 'tmpdir'

p Pathname("/usr/local").empty?             # => false
p Dir.mktmpdir { |dir| Pathname(dir).empty? } # => true
```

```ruby title="例 ファイルの場合"
require "pathname"
require 'tempfile'

p Pathname("testfile").empty?                         # => false
p Tempfile.create("tmp") { |tmp| Pathname(tmp).empty? } # => true
```

- **SEE** [Dir.empty?](../../../method/Dir/s/empty=3f.md), [FileTest?.empty?](../../../method/FileTest/m/empty=3f.md), [Pathname#zero?](../../../method/Pathname/i/zero=3f.md)
