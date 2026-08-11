# BasicObject#singleton_method_added

### def singleton_method_added(name) -> object

特異メソッドが追加された時にインタプリタから呼び出されます。

通常のメソッドの追加に対するフックには
[Module#method_added](../../../method/Module/i/method_added.md)を使います。

- **param** `name` -- 追加されたメソッド名が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class Foo
  def singleton_method_added(name)
    puts "singleton method \"#{name}\" was added"
  end
end

obj = Foo.new
def obj.foo
end

# => singleton method "foo" was added
```

- **SEE** [Module#method_added](../../../method/Module/i/method_added.md),[BasicObject#singleton_method_removed](../../../method/BasicObject/i/singleton_method_removed.md),[BasicObject#singleton_method_undefined](../../../method/BasicObject/i/singleton_method_undefined.md)
