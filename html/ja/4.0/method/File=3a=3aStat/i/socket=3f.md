# File::Stat#socket?

### def socket? -> bool

ソケットの時に真を返します。

```ruby
Dir.glob("/tmp/*"){|file|
  if File::Stat.new(file).socket?
    printf "%s\n", file
  end
}
#例
#=> /tmp/uimhelper-hogehoge
#...
```
