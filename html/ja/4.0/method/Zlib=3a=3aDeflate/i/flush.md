# Zlib::Deflate#flush

### def flush(flush = Zlib::SYNC_FLUSH) -> String

deflate('', flush) と同じです。flush が省略された時は [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md) が使用されます。
このメソッドはスクリプトの可読性のために提供されています。

- **param** `flush` -- [Zlib::NO_FLUSH](../../../method/Zlib/c/NO_FLUSH.md) [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md) [Zlib::FULL_FLUSH](../../../method/Zlib/c/FULL_FLUSH.md) などを指定します。

```ruby
require 'zlib'

def case1
  dez = Zlib::Deflate.new
  comp_str = dez.deflate('hoge')
  comp_str << dez.deflate(' fuga')
  comp_str << dez.deflate(' end', Zlib::FINISH)
  dez.close
  p comp_str
  p Zlib::Inflate.inflate(comp_str)
end

def case2
  dez = Zlib::Deflate.new
  comp_str = dez.deflate('hoge')
  comp_str << dez.flush
  comp_str << dez.deflate(' fuga')
  comp_str << dez.flush
  comp_str << dez.deflate(' end', Zlib::FINISH)
  dez.close
  p comp_str
  p Zlib::Inflate.inflate(comp_str)
end

case1
case2
#=> "x\234\313\310OOUH+MOTH\315K\001\000!\251\004\276"
#=> "hoge fuga end"
#=> "x\234\312\310OO\005\000\000\000\377\377RH+MO\004\000\000\000\377\377SH\315K\001\000!\251\004\276"
#=> "hoge fuga end"
```
