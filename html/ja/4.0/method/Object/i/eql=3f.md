# Object#eql?

### def eql?(other) -> bool

オブジェクトと other が等しければ真を返します。[Hash](../../../class/Hash.md) のキー比較をはじめ、[Array#uniq](../../../method/Array/i/uniq.md) や [Set](../../../class/Set.md) など、要素の同値性を判定するさまざまな場面で [Object#hash](../../../method/Object/i/hash.md) とともに使われます。

このメソッドは各クラスの性質に合わせて再定義すべきです。
多くの場合、 == と同様に同値性の判定をするように再定義されていますが、適切にキー判定ができるようにより厳しくなっている場合もあります。

デフォルトでは equal? と同じオブジェクトの同一性判定になっています。

このメソッドを再定義した時には [Object#hash](../../../method/Object/i/hash.md) メソッドも再定義しなければなりません。

- **param** `other` -- 比較するオブジェクトです。

```ruby
p("foo".eql?("bar")) # => false
p("foo".eql?("foo")) # => true

p(4.eql?(4)) # => true
p(4.eql?(4.0)) # => false
```

- **SEE** [Object#hash](../../../method/Object/i/hash.md),[Object#equal?](../../../method/Object/i/equal=3f.md),[Object#==](../../../method/Object/i/=3d=3d.md),[Array#uniq](../../../method/Array/i/uniq.md),[Set](../../../class/Set.md)
