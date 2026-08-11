# File::Stat#setuid?

### def setuid? -> bool

setuidされている時に真を返します。

```ruby
Dir.glob("/bin/*") {|bd|
  if File::Stat.new(bd).setuid?
    puts bd
  end
}
#例
#...
# => /bin/ping
# => /bin/su
#...
```
