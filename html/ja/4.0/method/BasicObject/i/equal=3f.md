# BasicObject#equal?

### def equal?(other) -> bool

オブジェクトが other と同一であれば真を、そうでない場合は偽を返します。

このメソッドは2つのオブジェクトが同一のものであるかどうかを判定します。
一般にはこのメソッドを決して再定義すべきでありません。
ただし、 [BasicObject](../../../class/BasicObject.md) の位置づけ上、どうしても再定義が必要な用途もあるでしょう。
再定義する際には自分が何をしているのかよく理解してから実行してください。

- **param** `other` -- 比較対象となるオブジェクト
- **return** -- other が self 自身であれば真、そうでない場合は偽

```ruby title="例"
original = "a"
copied = original.dup
substituted = original

p original == copied        # => true
p original == substituted   # => true
p original.equal? copied    # => false
p original.equal? substituted # => true
```

- **SEE** [Object#equal?](../../../method/Object/i/equal=3f.md), [Object#==](../../../method/Object/i/=3d=3d.md), [Object#eql?](../../../method/Object/i/eql=3f.md)
