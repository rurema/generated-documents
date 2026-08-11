# Module#included_modules

### def included_modules -> [Module]

self にインクルードされているモジュールの配列を返します。

```ruby title="例"
module Mixin
end

module Outer
  include Mixin
end

p Mixin.included_modules # => []
p Outer.included_modules # => [Mixin]
```

- **SEE** [Module#ancestors](../../../method/Module/i/ancestors.md)
