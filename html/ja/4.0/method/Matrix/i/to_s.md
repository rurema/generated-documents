# Matrix#to_s

### def to_s -> String

行列を文字列化し、その文字列を返します。

```ruby title="例"
require 'matrix'
a1 = [1, 2]
a2 = [3, 4.5]
m = Matrix[a1, a2]

p m.to_s # => "Matrix[[1, 2], [3, 4.5]]"
```
