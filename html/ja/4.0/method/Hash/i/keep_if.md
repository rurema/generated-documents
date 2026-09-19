# Hash#keep_if

### def keep_if -> Enumerator
### def keep_if {|key, value| ... } -> self

キーと値を引数としてブロックを評価した結果が真であるような要素を self
に残します。

常に self を返します。

ブロックが与えられなかった場合は、自身と keep_if から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

```ruby title="例"
h2 = {}
c = ("a".."g")
c.each_with_index {|e, i| h2[i] = e }

p h2.keep_if  # => #<Enumerator: {0=>"a", 1=>"b", 2=>"c", 3=>"d", 4=>"e", 5=>"f", 6=>"g"}:keep_if>

p h2.keep_if { |k, v| k % 3 == 0 }  # => {0=>"a", 3=>"d", 6=>"g"}
p h2.keep_if { |k, v| true }      # => {0=>"a", 3=>"d", 6=>"g"}
```

- **SEE** [Hash#select!](../../../method/Hash/i/select=21.md), [Hash#select](../../../method/Hash/i/select.md), [Hash#delete_if](../../../method/Hash/i/delete_if.md), [Hash#reject!](../../../method/Hash/i/reject=21.md)
