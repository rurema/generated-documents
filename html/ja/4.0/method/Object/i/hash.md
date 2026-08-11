# Object#hash

### def hash -> Integer

オブジェクトのハッシュ値を返します。このハッシュ値は、[Object#eql?](../../../method/Object/i/eql=3f.md) と合わせて [Hash](../../../class/Hash.md) クラスで、2つのオブジェクトを同一のキーとするか判定するために用いられます。

2つのオブジェクトのハッシュ値が異なるとき、直ちに異なるキーとして判定されます。
逆に、2つのハッシュ値が同じとき、さらに [Object#eql?](../../../method/Object/i/eql=3f.md) での比較により判定されます。
そのため、同じキーとして判定される状況は [Object#eql?](../../../method/Object/i/eql=3f.md) の比較で真となる場合のみであり、このとき前段階としてハッシュ値どうしが等しい必要があります。
つまり、

```text
A.eql?(B) ならば A.hash == B.hash
```

の関係が満たされている必要があります。

ただし、ハッシュのキーとして [Integer](../../../class/Integer.md), [Symbol](../../../class/Symbol.md), [String](../../../class/String.md) などの特定の組み込みクラスが使われるときは、組込みのハッシュ関数が使用され、hash メソッドは呼ばれません。

hash メソッドを再定義する場合は、一様に分布する任意の整数を返すようにします。

- **return** -- ハッシュ値を返します。Ruby 内部の固定長整数 fixnum に収まらない場合は切り捨てられます。

```ruby
p self.hash # => 2013505522753096494
p 0.hash    # => 2647535320520409998
p 0.0.hash  # => -2975129765814025835
p nil.hash  # => 2401531420355998067

p "ruby".hash # => 4460896024486900438
p "ruby".hash # => 4460896024486900438
p :ruby.hash  # => 3979895509189707770
p :ruby.hash  # => 3979895509189707770
```

- **SEE** [Object#eql?](../../../method/Object/i/eql=3f.md), [Hash#\[\]](../../../method/Hash/i/=5b=5d.md)
