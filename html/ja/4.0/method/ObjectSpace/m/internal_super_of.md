# ObjectSpace?.internal_super_of

### module_function def internal_super_of(cls) -> Class | Module
{: since="2.3.0"}

cls の直接のスーパークラスを返します。include したモジュールの iclass のような隠されたクラスも読み飛ばさずに返します。

- **param** `cls` -- `Class` または `Module` を指定します。それらをラップした [ObjectSpace::InternalObjectWrapper](../../../class/ObjectSpace=3a=3aInternalObjectWrapper.md) オブジェクトを指定することもできます。

[Class#superclass](../../../method/Class/i/superclass.md) は include したモジュールの iclass を読み飛ばして返しますが、本メソッドは読み飛ばしません。

```ruby title="例"
require 'objspace'

module M; end
class A
  include M
end
p A.superclass                       # => Object
p ObjectSpace.internal_super_of(A)   # => #<InternalObject:0x... T_ICLASS>
```

本メソッドをアプリケーションで使用すべきではありません。

本メソッドは CRuby 以外では動作しません。

- **SEE** [ObjectSpace?.internal_class_of](../../../method/ObjectSpace/m/internal_class_of.md)
