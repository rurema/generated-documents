# Module#ancestors

### def ancestors -> [Class, Module]

クラス、モジュールのスーパークラスとインクルードしているモジュールを優先順位順に配列に格納して返します。

```ruby title="例"
module Drivable
end
class Vehicle
  include Drivable
end
class Car < Vehicle
  p ancestors
  p included_modules
  p superclass
end
# => [Car, Vehicle, Drivable, Object, Kernel, BasicObject]
# => [Drivable, Kernel]
# => Vehicle
```

- **SEE** [Module#included_modules](../../../method/Module/i/included_modules.md)
