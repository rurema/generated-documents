# PrettyPrint#break_outmost_groups

### def break_outmost_groups -> ()
{: since=""}

自身のバッファの中で、出力幅([PrettyPrint#maxwidth](../../../method/PrettyPrint/i/maxwidth.md))を超えている外側のグループを、バッファの幅が maxwidth 以下になるまで改行して出力します。

[PrettyPrint#text](../../../method/PrettyPrint/i/text.md) や [PrettyPrint#breakable](../../../method/PrettyPrint/i/breakable.md) の内部で、バッファに追加を行うたびに呼ばれています。

```ruby
require 'prettyprint'

out = PrettyPrint.format(''.dup, 10) do |q|
  q.text 'aaaaa'
  q.group {
    q.text 'b' * 20
    q.breakable
    q.text 'c'
  }
  q.break_outmost_groups
  q.text 'd'
end
puts out
# => aaaaabbbbbbbbbbbbbbbbbbbb
#    cd
```
