# JSON::State#array_nl

### def array_nl -> String

JSON の配列の後に出力する文字列を返します。

```ruby title="例"
require "json"

json_state = JSON::State.new({})
json_state.array_nl # => ""
json_state = JSON::State.new(array_nl: "\n")
json_state.array_nl # => "\n"
```
