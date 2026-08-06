# Method#clone

### def clone -> Method

自身を複製した [Method](../../../class/Method.md) オブジェクトを作成して返します。

```ruby title="例"
class Foo
  def foo
    "foo"
  end
end

m = Foo.new.method(:foo) # => #<Method: Foo#foo>
p m.call # => "foo"

p m.clone # => #<Method: Foo#foo>
p m.clone.call # => "foo"
```
