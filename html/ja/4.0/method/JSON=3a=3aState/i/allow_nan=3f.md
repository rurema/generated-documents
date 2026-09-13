# JSON::State#allow_nan?

### def allow_nan? -> bool
### def allow_nan=(enable)

NaN, Infinity, -Infinity を生成できる場合、`allow_nan?` は真を返します。
そうでない場合は偽を返します。

`allow_nan=` は、NaN, Infinity, -Infinity を生成できるかどうかを設定します。

- **param** `enable` -- 真を指定すると NaN, Infinity, -Infinity を生成できるようにします。
           偽を指定すると生成できないようにします。

```ruby title="例"
require "json"

json_state = JSON::State.new({})
json_state.allow_nan? # => false
json_state = JSON::State.new(allow_nan: true)
json_state.allow_nan? # => true
```


```ruby title="例 allow_nan= を使う"
require "json"

json_state = JSON::State.new(allow_nan: true)
p json_state.allow_nan? # => true
json_state.allow_nan = false
p json_state.allow_nan? # => false
```


- **SEE** [rfc:4627]
