# Matrix#row_size

### def row_size -> Integer
### def row_count -> Integer

`self` の行数を返します。

`row_size` というメソッド名は「行（row）のサイズ（列数に同じ）」を連想しますが、行の数です。まぎらわしいので `row_count` のほうを使ってください。

```ruby
require "matrix"

p Matrix[[1, 2, 3], [4, 5, 6]].row_count # => 2
```
