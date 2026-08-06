# Kernel#j

### def j(*objects) -> nil

与えられたオブジェクトを JSON 形式の文字列で標準出力に一行で出力します。

- **param** `objects` -- JSON 形式で出力したいオブジェクトを指定します。

```ruby title="例"
require "json"

p j([1,2,{"name" => "tanaka","age" => 19}])
# => [1,2,{"name":"tanaka","age":19}]
```

- **SEE** [Kernel?.p](../../../method/Kernel/m/p.md)
