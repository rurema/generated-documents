# UnboundMethod#hash

### def hash    -> Integer
{: since=""}

自身のハッシュ値を返します。

```ruby title="例"
a = method(:==).unbind
b = method(:eql?).unbind
p a.eql? b          # => true
p a.hash == b.hash  # => true
p [a, b].uniq.size  # => 1
```
