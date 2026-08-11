# JSON::Generator::GeneratorMethods::NilClass#to_json

### def to_json(state_or_hash = nil) -> String

自身から生成した JSON 形式の文字列を返します。

"null" という文字列を返します。

- **param** `state_or_hash` -- 生成する JSON 形式の文字列をカスタマイズするために [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスか、
                     [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md) の引数と同じ [Hash](../../../class/Hash.md) を指定します。

```ruby title="例"
require "json"

p nil.to_json # => "null"
```
