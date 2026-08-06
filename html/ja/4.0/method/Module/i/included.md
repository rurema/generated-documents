# Module#included

### def included(class_or_module) -> ()

self が [Module#include](../../../method/Module/i/include.md) されたときに対象のクラスまたはモジュールを引数にしてインタプリタがこのメソッドを呼び出します。

- **param** `class_or_module` -- [Module#include](../../../method/Module/i/include.md) を実行したオブジェクト

```ruby title="例"
module Trackable
  def self.included(mod)
    p "#{mod} include #{self}"
  end
end
class Report
  include Trackable
end
# => "Report include Trackable"
```

- **SEE** [Module#append_features](../../../method/Module/i/append_features.md)
