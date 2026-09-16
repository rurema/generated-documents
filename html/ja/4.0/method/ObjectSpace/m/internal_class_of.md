# ObjectSpace?.internal_class_of

### module_function def internal_class_of(obj) -> Class | Module
{: since="2.3.0"}

obj の実際のクラスを返します。これは [Object#class](../../../method/Object/i/class.md) が返すクラスとは異なる場合があります。

Ruby は特異クラスや、include したモジュールの iclass のような隠されたクラスをオブジェクトの継承関係に挿入します。[Object#class](../../../method/Object/i/class.md) はこれらを読み飛ばして返しますが、本メソッドは特異クラスなどの隠されたクラスも含めて、最初に見つかったクラスをそのまま返します。

- **param** `obj` -- 実際のクラスを取得したいオブジェクトを指定します。[ObjectSpace::InternalObjectWrapper](../../../class/ObjectSpace=3a=3aInternalObjectWrapper.md) オブジェクトを指定することもでき、その場合はラップされている内部オブジェクトのクラスを返します。

```ruby title="例"
require 'objspace'

s = "x"
def s.foo; end                      # s に特異クラスを与える
p s.class                           # => String
p ObjectSpace.internal_class_of(s)  # => #<Class:#<String:0x...>>
```

本メソッドをアプリケーションで使用すべきではありません。

本メソッドは CRuby 以外では動作しません。

- **SEE** [ObjectSpace?.internal_super_of](../../../method/ObjectSpace/m/internal_super_of.md)
