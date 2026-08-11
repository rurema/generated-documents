# File::Stat#setgid?

### def setgid? -> bool

setgidされている時に真を返します。

```ruby
Dir.glob("/usr/sbin/*") {|bd|
  if File::Stat.new(bd).setgid?
    puts bd
  end
}
#例
#...
# => /usr/sbin/postqueue
#...
```
