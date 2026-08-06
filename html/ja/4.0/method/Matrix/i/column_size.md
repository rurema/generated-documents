# Matrix#column_size

### def column_size -> Integer
### def column_count -> Integer

`self` の列数を返します。

`column_size` というメソッド名は「列（column）のサイズ（行数に同じ）」を連想しますが、列の数です。まぎらわしいので `column_count` のほうを使ってください。

```ruby
require "matrix"

p Matrix[[1, 2, 3], [4, 5, 6]].column_count # => 3
```
