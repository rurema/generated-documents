# File::Stat#blocks

### def blocks -> Integer

割り当てられているブロック数を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.blocks  #=> nil
```
