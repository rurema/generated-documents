# PrettyPrint#current_group

### def current_group -> PrettyPrint::Group
{: since=""}

スタックに最後に積まれたグループ、つまり現在ブロックを実行中の最も内側の [PrettyPrint#group](../../../method/PrettyPrint/i/group.md) に対応するグループを返します。

カスタムフォーマッタの実装で、現在のネストの深さなどを調べるために使用します。

```ruby
require 'prettyprint'

out = PrettyPrint.format(''.dup) do |q|
  q.group {
    q.text q.current_group.depth.to_s
    q.group {
      q.text q.current_group.depth.to_s
    }
  }
end
puts out
# => 12
```

- **SEE** [PrettyPrint#group](../../../method/PrettyPrint/i/group.md)
