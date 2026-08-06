# Matrix#conjugate

### def conjugate -> Matrix
### def conj -> Matrix

複素共役を取った行列を返します。

```ruby title="例"
require 'matrix'
p Matrix[[1+2i, 1i, 0], [1, 2, 3]]
  # => 1+2i   i  0
  #       1   2  3
p Matrix[[1+2i, 1i, 0], [1, 2, 3]].conjugate
  # => 1-2i  -i  0
  #       1   2  3
```
