# Pathname.getwd

### def Pathname.getwd -> Pathname
### def Pathname.pwd   -> Pathname

カレントディレクトリを元に Pathname オブジェクトを生成します。
Pathname.new(Dir.getwd) と同じです。

```ruby title="例"
require "pathname"

p Pathname.getwd #=> #<Pathname:/home/zzak/projects/ruby>
```

- **SEE** [Dir.getwd](../../../method/Dir/s/getwd.md)
