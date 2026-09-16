# PrettyPrint#group_sub

### def group_sub { ... } -> object
{: since=""}

ブロックを実行しながら、現在のグループより1段階深いグループをキューに追加します。

[PrettyPrint#group](../../../method/PrettyPrint/i/group.md) と異なり、開き括弧・閉じ括弧の出力([PrettyPrint#text](../../../method/PrettyPrint/i/text.md))やインデントの増加([PrettyPrint#nest](../../../method/PrettyPrint/i/nest.md))は行いません。[PrettyPrint#group](../../../method/PrettyPrint/i/group.md) は内部でこのメソッドを使って実装されています。

```ruby
require 'prettyprint'

out = PrettyPrint.format(''.dup, 5) do |q|
  q.group_sub {
    q.text 'hello'
    q.breakable
    q.text 'world'
  }
end
puts out
# => hello
#    world
```

- **SEE** [PrettyPrint#group](../../../method/PrettyPrint/i/group.md)
