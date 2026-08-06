# main.include

### def include(*modules) -> self

引数 modules で指定したモジュールを後ろから順番に [Object](../../../class/Object.md) にインクルードします。

- **param** `modules` -- [Module](../../../class/Module.md) のインスタンス( [Enumerable](../../../class/Enumerable.md) など)を指定します。

- **raise** `ArgumentError` -- 継承関係が循環してしまうような include を行った場
                     合に発生します。

```ruby title="例:"
include Math

p hypot(3, 4)  # => 5.0
```

- **SEE** [Module#include](../../../method/Module/i/include.md)
