# JSON::State#merge

### def configure(options = {}) -> self
### def merge(options = {})     -> self

与えられたハッシュで自身を設定します。

オプションで使用するハッシュのキーについては [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md) を参照してください。

- **param** `options` -- このオブジェクトの設定をするためのハッシュを指定します。

```ruby title="例"
require "json"

json_state = JSON::State.new(indent: "\t")
json_state.indent # => "\t"
p JSON.generate({key1: "value1", key2: "value2"}, json_state)
# => "{\t\"key1\":\"value1\",\t\"key2\":\"value2\"}"

json_state.configure(indent: "  ")
json_state.indent # => "  "
p JSON.generate({key1: "value1", key2: "value2"}, json_state)
# => "{  \"key1\":\"value1\",  \"key2\":\"value2\"}"
```

- **SEE** [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md)
