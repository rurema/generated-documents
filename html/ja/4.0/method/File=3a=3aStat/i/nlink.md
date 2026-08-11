# File::Stat#nlink

### def nlink -> Integer

ハードリンクの数を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.nlink    # => 1
```
