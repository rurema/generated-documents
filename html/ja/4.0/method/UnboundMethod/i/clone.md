# UnboundMethod#clone

### def clone -> UnboundMethod

自身を複製した [UnboundMethod](../../../class/UnboundMethod.md) オブジェクトを作成して返します。

```ruby title="例"
a = String.instance_method(:size)
b = a.clone

p a == b     # => true
```
