# Module#extended

### def extended(obj) -> ()

self が他のオブジェクト に [Object#extend](../../../method/Object/i/extend.md) されたときに呼ばれます。引数には extend を行ったオブジェクトが渡されます。

- **param** `obj` -- [Object#extend](../../../method/Object/i/extend.md) を行ったオブジェクト

```ruby title="例"
module Debuggable
  def self.extended(obj)
    p "#{obj} extend #{self}"
  end
end

Object.new.extend Debuggable

# => "#<Object:0x401cbc3c> extend Debuggable"
```

- **SEE** [Module#extend_object](../../../method/Module/i/extend_object.md)
