# File::Stat#executable_real?

### def executable_real? -> bool

実ユーザ/グループIDで実行できる時に真を返します。

```ruby
p File::Stat.new($0).executable_real?
#例
# => true
```
