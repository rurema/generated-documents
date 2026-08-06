# Method#owner

### def owner    -> Class | Module

このメソッドが定義されている class か module を返します。

```ruby title="例"
class Foo
  def foo(arg)
    "foo called with arg #{arg}"
  end
end

m = Foo.new.method(:foo) # => #<Method: Foo#foo>
p m.owner # => Foo

m = Foo.new.method(:puts) # => #<Method: Foo(Kernel)#puts>
p m.owner # => Kernel
```
