# Delegator#eql?

### def eql?(obj) -> bool
{: since="2.5.0"}

自身が委譲先のオブジェクトと `eql?` の意味で等しい場合に、真を返します。
そうでない場合は、偽を返します。

- **param** `obj` -- 比較対象のオブジェクトを指定します。

```ruby title="例"
require 'delegate'

a = SimpleDelegator.new([1, 2, 3])
b = SimpleDelegator.new([1, 2, 3])
p a.eql?(b)         # => true
p a.eql?([1, 2, 3]) # => true
p a.eql?([1, 2, 4]) # => false
```

- **SEE** [Delegator#==](../../../method/Delegator/i/=3d=3d.md)
