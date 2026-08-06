# Module#instance_methods

### def instance_methods(inherited_too = true) -> [Symbol]

そのモジュールで定義されている public および protected メソッド名の一覧を配列で返します。

- **param** `inherited_too` -- false を指定するとそのモジュールで定義されているメソッドのみ返します。

- **SEE** [Object#methods](../../../method/Object/i/methods.md), [Module#public_instance_methods](../../../method/Module/i/public_instance_methods.md), [Module#private_instance_methods](../../../method/Module/i/private_instance_methods.md), [Module#protected_instance_methods](../../../method/Module/i/protected_instance_methods.md)

```ruby title="例1"
class Cat
  private;   def private_foo()   end
  protected; def protected_foo() end
  public;    def public_foo()    end
end

# あるクラスのインスタンスメソッドの一覧を得る
p Cat.instance_methods(false)
p Cat.public_instance_methods(false)
p Cat.private_instance_methods(false)
p Cat.protected_instance_methods(false)

class Kitten < Cat
end
```

```text title="実行結果"
[:protected_foo, :public_foo]
[:public_foo]
[:private_foo]
[:protected_foo]
```

```ruby title="例2"
class Dog
  private;   def private_foo()   end
  protected; def protected_foo() end
  public;    def public_foo()    end
end

# あるクラスのインスタンスメソッドの一覧を得る。
# 親のクラスのインスタンスメソッドも含めるため true を指定して
# いるが、Object のインスタンスメソッドは一覧から排除している。
p Dog.instance_methods(true)           - Object.instance_methods(true)
p Dog.public_instance_methods(true)    - Object.public_instance_methods(true)
p Dog.private_instance_methods(true)   - Object.private_instance_methods(true)
p Dog.protected_instance_methods(true) - Object.protected_instance_methods(true)
```

```text title="実行結果"
[:protected_foo, :public_foo]
[:public_foo]
[:private_foo]
[:protected_foo]
```
