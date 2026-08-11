# File::Stat#sticky?

### def sticky? -> bool

stickyビットが立っている時に真を返します。

```ruby
Dir.glob("/usr/bin/*") {|bd|
  begin
    if File::Stat.new(bd).sticky?
      puts bd
    end
  rescue
  end
}
#例
#...
# => /usr/bin/emacs-21.4
#...
```
