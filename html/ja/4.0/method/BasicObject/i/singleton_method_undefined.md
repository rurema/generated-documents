# BasicObject#singleton_method_undefined

### def singleton_method_undefined(name) -> object

特異メソッドが [Module#undef_method](../../../method/Module/i/undef_method.md) または
undef により未定義にされた時にインタプリタから呼び出されます。

通常のメソッドの未定義に対するフックには
[Module#method_undefined](../../../method/Module/i/method_undefined.md) を使います。

- **param** `name` -- 未定義にされたメソッド名が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class Foo
  def singleton_method_undefined(name)
    puts "singleton method \"#{name}\" was undefined"
  end
end

obj = Foo.new
def obj.foo
end
def obj.bar
end

class << obj
  undef_method :foo
end
obj.instance_eval {undef bar}

# => singleton method "foo" was undefined
#   singleton method "bar" was undefined
```

- **SEE** [Module#method_undefined](../../../method/Module/i/method_undefined.md),[BasicObject#singleton_method_added](../../../method/BasicObject/i/singleton_method_added.md),[BasicObject#singleton_method_removed](../../../method/BasicObject/i/singleton_method_removed.md) , [spec/def#undef](../../../doc/spec=2fdef.md#undef)
