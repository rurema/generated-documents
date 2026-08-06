# Module#append_features

### def append_features(module_or_class) -> self

モジュール(あるいはクラス)に self の機能を追加します。

このメソッドは [Module#include](../../../method/Module/i/include.md) の実体であり、
include を Ruby で書くと以下のように定義できます。

```ruby title="例"
def include(*modules)
  modules.reverse_each do |mod|
    # append_features や included はプライベートメソッドなので
    # 直接 mod.append_features(self) などとは書けない
    mod.__send__(:append_features, self)
    mod.__send__(:included, self)
  end
end
```

- **SEE** [Module#included](../../../method/Module/i/included.md)
