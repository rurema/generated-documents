# Method#unbind

### def unbind -> UnboundMethod

self のレシーバとの関連を取り除いた [UnboundMethod](../../../class/UnboundMethod.md) オブジェクトを生成して返します。

```ruby title="例"
class Foo
  def foo
    "foo"
  end
end

m = Foo.new.method(:foo) # => #<Method: Foo#foo>
unbound_method = m.unbind # => #<UnboundMethod: Foo#foo>
p unbound_method.bind(Foo.new) # => #<Method: Foo#foo>
```
