# Module#method_added

### def method_added(name) -> ()

メソッド name が追加された時にインタプリタがこのメソッドを呼び出します。

特異メソッドの追加に対するフックには
[BasicObject#singleton_method_added](../../../method/BasicObject/i/singleton_method_added.md)
を使います。

- **param** `name` -- 追加されたメソッドの名前が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class Watcher
  def Watcher.method_added(name)
    puts "method \"#{name}\" was added"
  end

  def foo
  end
  define_method :bar, instance_method(:foo)
end

# => method "foo" was added
#    method "bar" was added
```
