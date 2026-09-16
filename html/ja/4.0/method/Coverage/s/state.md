# Coverage.state

### def Coverage.state -> Symbol

カバレッジの測定の状態を返します。

`:idle`([Coverage.setup](../../../method/Coverage/s/setup.md) も [Coverage.start](../../../method/Coverage/s/start.md) も行われていない状態)、`:suspended`(測定の準備はできているが一時停止中の状態)、`:running`(測定中の状態)のいずれかを返します。

```ruby
require "coverage"
p Coverage.state  # => :idle
Coverage.setup
p Coverage.state  # => :suspended
Coverage.resume
p Coverage.state  # => :running
```
