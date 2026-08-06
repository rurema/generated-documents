# Array#eql?

### def eql?(other)    -> bool

自身と other の各要素をそれぞれ順に
[Object#eql?](../../../method/Object/i/eql=3f.md) で比較して、全要素が等しければ真を返します。そうでない場合に false を返します。

- **param** `other` -- 自身と比較したい配列を指定します。

```ruby title="例"
p ["a", "b", "c"].eql? ["a", "b", "c"]    #=> true
p ["a", "b", "c"].eql? ["a", "c", "b"]    #=> false
p ["a", "b", 1].eql?   ["a", "b", 1.0]    #=> false (1.eql?(1.0) が false なので)
```

- **SEE** [Object#eql?](../../../method/Object/i/eql=3f.md)
