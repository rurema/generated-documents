# Module#prepended

### def prepended(class_or_module) -> ()

self が [Module#prepend](../../../method/Module/i/prepend.md) されたときに対象のクラスまたはモジュールを引数にしてインタプリタがこのメソッドを呼び出します。

- **param** `class_or_module` -- [Module#prepend](../../../method/Module/i/prepend.md) を実行したオブジェクト

```ruby title="例"
module A
  def self.prepended(mod)
    puts "#{self} prepended to #{mod}"
  end
end
module Enumerable
  prepend A
end
# => "A prepended to Enumerable"
```

- **SEE** [Module#included](../../../method/Module/i/included.md), [Module#prepend](../../../method/Module/i/prepend.md), [Module#prepend_features](../../../method/Module/i/prepend_features.md)
