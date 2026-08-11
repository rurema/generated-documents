# BasicObject#singleton_method_removed

### def singleton_method_removed(name) -> object

特異メソッドが [Module#remove_method](../../../method/Module/i/remove_method.md) により削除された時にインタプリタから呼び出されます。

通常のメソッドの削除に対するフックには
[Module#method_removed](../../../method/Module/i/method_removed.md)を使います。

- **param** `name` -- 削除されたメソッド名が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class Foo
  def singleton_method_removed(name)
    puts "singleton method \"#{name}\" was removed"
  end
end

obj = Foo.new
def obj.foo
end

class << obj
  remove_method :foo
end

# => singleton method "foo" was removed
```

- **SEE** [Module#method_removed](../../../method/Module/i/method_removed.md),[BasicObject#singleton_method_added](../../../method/BasicObject/i/singleton_method_added.md),[BasicObject#singleton_method_undefined](../../../method/BasicObject/i/singleton_method_undefined.md)
