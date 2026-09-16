# PrettyPrint#fill_breakable

### def fill_breakable(sep = ' ') -> ()
{: since=""}
### def fill_breakable(sep, width = sep.length) -> ()
{: since=""}

[PrettyPrint#breakable](../../../method/PrettyPrint/i/breakable.md) と似ていますが、改行するかどうかがそれぞれ個別に決定される点が異なります。

同じグループの中で fill_breakable を2回呼んだ場合、(改行,改行)・(改行,非改行)・(非改行,改行)・(非改行,非改行) の4通りの結果になり得ます。これは [PrettyPrint#breakable](../../../method/PrettyPrint/i/breakable.md) とは異なる点です。同じグループの中で breakable を2回呼んだ場合、改行するなら全て同時に改行するため、(改行,改行)・(非改行,非改行) の2通りにしかなりません。

もしその位置で改行されなければ、width カラムのテキスト sep が出力の際にそこに挿入されます。

- **param** `sep` -- 改行が起きなかった場合に挿入されるテキストを文字列で指定します。指定されなかった場合、' ' が利用されます。

- **param** `width` -- テキスト sep は width カラムであると仮定されます。指定されなければ、sep.length が利用されます。例えば sep が多バイト文字の際に指定する必要があるかも知れません。

```ruby
require 'prettyprint'

out = PrettyPrint.format(''.dup, 10) do |q|
  q.group {
    %w[aaaa bbbb cccc dddd].each_with_index do |w, i|
      q.fill_breakable if i > 0
      q.text w
    end
  }
end
puts out
# => aaaa bbbb
#    cccc dddd
```

- **SEE** [PrettyPrint#breakable](../../../method/PrettyPrint/i/breakable.md)
