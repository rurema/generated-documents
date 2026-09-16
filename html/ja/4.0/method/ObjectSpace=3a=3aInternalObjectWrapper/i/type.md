# ObjectSpace::InternalObjectWrapper#type

### def type -> Symbol

ラップしている内部オブジェクトの型をシンボルで返します。

例えば、include したモジュールは内部的には `T_ICLASS` のオブジェクトとして表現されています。

```ruby title="例"
require 'objspace'

module M; end
class A; include M; end

iclass = ObjectSpace.internal_super_of(A)
p iclass.type # => :T_ICLASS
```

返されるシンボルの集合は処理系に依存します。
