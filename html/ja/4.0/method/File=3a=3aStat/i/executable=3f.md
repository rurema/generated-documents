# File::Stat#executable?

### def executable? -> bool

実効ユーザ/グループIDで実行できる時に真を返します。

```ruby
p File::Stat.new($0).executable?
# 例
# => true
```
