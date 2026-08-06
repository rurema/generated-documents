# Module.used_modules

### def Module.used_modules -> [Module]

現在のスコープで using されているすべてのモジュールを配列で返します。
配列内のモジュールの順番は未定義です。

```ruby title="例"
module A
  refine Object do
  end
end

module B
  refine Object do
  end
end

using A
using B
p Module.used_modules
#=> [B, A]
```
