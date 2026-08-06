# Module#public_method_defined?

### def public_method_defined?(name, inherit=true) -> bool

インスタンスメソッド name がモジュールに定義されており、しかもその可視性が public であるときに true を返します。
そうでなければ false を返します。

- **param** `name` -- [Symbol](../../../class/Symbol.md) か [String](../../../class/String.md) を指定します。
- **param** `inherit` -- 真を指定するとスーパークラスや include したモジュールで
       定義されたメソッドも対象になります。

- **SEE** [Module#method_defined?](../../../method/Module/i/method_defined=3f.md), [Module#private_method_defined?](../../../method/Module/i/private_method_defined=3f.md), [Module#protected_method_defined?](../../../method/Module/i/protected_method_defined=3f.md)

```ruby title="例"
module A
  def method1()  end
end
class B
  protected
  def method2()  end
end
class C < B
  include A
  def method3()  end
end

p A.method_defined? :method1               #=> true
p C.public_method_defined? "method1"       #=> true
p C.public_method_defined? "method1", true #=> true
p C.public_method_defined? "method1", false  #=> true
p C.public_method_defined? "method2"       #=> false
p C.method_defined? "method2"              #=> true
```
