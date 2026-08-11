# File::Stat#mtime

### def mtime -> Time

最終更新時刻を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.mtime   # => Wed Sep 05 20:42:18 +0900 2007
```


- **SEE** [Time](../../../class/Time.md)
