# Prime::EratosthenesGenerator#rewind

### def rewind -> nil

列挙状態を巻き戻します。

```ruby title="例"
require 'prime'
generator = Prime::EratosthenesGenerator.new
p generator.next #=> 2
p generator.next #=> 3
p generator.next #=> 5

generator.rewind

p generator.next #=> 2
```
