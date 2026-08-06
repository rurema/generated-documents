# JSON::State#space

### def space -> String

JSON 形式の文字列のトークン間に挿入する文字列を返します。

```ruby title="例"
require "json"

json_state = JSON::State.new(space: "")
json_state.space             # => ""
puts JSON.generate([1, 2, { name: "tanaka", age: 19 }], json_state)
# => [1,2,{"name":"tanaka","age":19}]

json_state = JSON::State.new(space: "\t")
json_state.space             # => "\t"
puts JSON.generate([1, 2, { name: "tanaka", age: 19 }], json_state)
# => [1,2,{"name":  "tanaka","age": 19}]
```
