# Module#undefined_instance_methods

### def undefined_instance_methods -> [Symbol]

そのモジュールで [Module#undef_method](../../../method/Module/i/undef_method.md) によって未定義にされたインスタンスメソッド名の一覧を配列で返します。

祖先で未定義にされたメソッドは含まれません。

```ruby title="例"
class Foo
  def bar; end
  def baz; end
end

class Sub < Foo
  undef bar
end

p Sub.undefined_instance_methods # => [:bar]
p Foo.undefined_instance_methods # => []
```

- **SEE** [Module#undef_method](../../../method/Module/i/undef_method.md), [Module#instance_methods](../../../method/Module/i/instance_methods.md)
