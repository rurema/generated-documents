# Module#private_instance_methods

### def private_instance_methods(inherited_too = true) -> [Symbol]

そのモジュールで定義されている private メソッド名の一覧を配列で返します。

- **param** `inherited_too` -- false を指定するとそのモジュールで定義されているメソッドのみ返します。

- **SEE** [Object#private_methods](../../../method/Object/i/private_methods.md), [Module#instance_methods](../../../method/Module/i/instance_methods.md), [Module#public_instance_methods](../../../method/Module/i/public_instance_methods.md), [Module#protected_instance_methods](../../../method/Module/i/protected_instance_methods.md)

```ruby title="例"
module Taggable
  def foo; end
  private def bar; end
end

module Sortable
  include Taggable

  def baz; end
  private def qux; end
end

p Sortable.private_instance_methods # => [:qux, :bar]
p Sortable.private_instance_methods(false) # => [:qux]
```
