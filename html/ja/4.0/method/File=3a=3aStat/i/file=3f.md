# File::Stat#file?

### def file? -> bool

通常ファイルの時に真を返します。

```ruby
p File::Stat.new($0).file? # => true
```
