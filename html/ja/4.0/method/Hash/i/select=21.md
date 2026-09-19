# Hash#select!

### def select! -> Enumerator
### def select! {|key, value| ... } -> self | nil
### def filter! -> Enumerator
### def filter! {|key, value| ... }   -> self | nil

キーと値を引数としてブロックを評価した結果が真であるような要素を self
に残します。

オブジェクトが変更された場合に self を、されていない場合に nil を返します。

ブロックが与えられなかった場合は、自身と select! から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

```ruby title="例"
h1 = {}
c = ("a".."g")
c.each_with_index {|e, i| h1[i] = e }

p h1.select!  # => #<Enumerator: {0=>"a", 1=>"b", 2=>"c", 3=>"d", 4=>"e", 5=>"f", 6=>"g"}:select!>

p h1.select! { |k, v| k % 3 == 0 }  # => {0=>"a", 3=>"d", 6=>"g"}
p h1.select! { |k, v| true }      # => nil
```

- **SEE** [Hash#keep_if](../../../method/Hash/i/keep_if.md), [Hash#select](../../../method/Hash/i/select.md), [Hash#delete_if](../../../method/Hash/i/delete_if.md), [Hash#reject!](../../../method/Hash/i/reject=21.md)
