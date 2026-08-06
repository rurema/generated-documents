# Pathname#chown

### def chown(owner, group) -> Integer

File.chown(owner, group, self.to_s) と同じです。

- **param** `owner` -- オーナーを指定します。

- **param** `group` -- グループを指定します。

```ruby title="例"
require 'pathname'

p Pathname('testfile').stat.uid   # => 501
Pathname('testfile').chown(502, 12)
p Pathname('testfile').stat.uid   # => 502
```

- **SEE** [File.chown](../../../method/File/s/chown.md), [File#chown](../../../method/File/i/chown.md)
