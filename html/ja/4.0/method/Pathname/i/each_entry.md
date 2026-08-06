# Pathname#each_entry

### def each_entry {|pathname| ... } -> nil
### def each_entry -> Enumerator
Dir.foreach(self.to_s) {|f| yield Pathname.new(f) } と同じです。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require "pathname"

Pathname("/usr/local").each_entry {|f| p f }

# => #<Pathname:.>
# => #<Pathname:..>
# => #<Pathname:bin>
# => #<Pathname:etc>
# => #<Pathname:include>
# => #<Pathname:lib>
# => #<Pathname:opt>
```

- **SEE** [Dir.foreach](../../../method/Dir/s/foreach.md)
