# Method#super_method

### def super_method -> Method | nil

self 内で super を実行した際に実行されるメソッドを [Method](../../../class/Method.md) オブジェクトにして返します。

- **SEE** [UnboundMethod#super_method](../../../method/UnboundMethod/i/super_method.md)

```ruby title="例"
class Super
  def foo
    "superclass method"
  end
end

class Sub < Super
  def foo
    "subclass method"
  end
end

m = Sub.new.method(:foo) # => #<Method: Sub#foo>
p m.call # => "subclass method"
p m.super_method # => #<Method: Super#foo>
p m.super_method.call # => "superclass method"
```
