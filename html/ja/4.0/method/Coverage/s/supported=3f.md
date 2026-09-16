# Coverage.supported?

### def Coverage.supported?(mode) -> bool

指定したモードのカバレッジ測定がサポートされているかどうかを返します。

- **param** `mode` -- `:lines`、`:oneshot_lines`、`:branches`、`:methods`、`:eval` のいずれかをシンボルで指定します。

```ruby
require "coverage"
p Coverage.supported?(:lines)  # => true
p Coverage.supported?(:all)    # => false
```
