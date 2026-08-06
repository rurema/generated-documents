# JSON?.pretty_unparse

### module_function def pretty_generate(object, options = nil) -> String
### module_function def pretty_unparse(object, options = nil) -> String

Ruby のオブジェクトを JSON 形式の文字列に変換して返します。

このメソッドは [JSON?.generate](../../../method/JSON/m/generate.md) よりも人間に読みやすい文字列を返します。

pretty_unparse は将来削除される予定です。

- **param** `object` -- JSON 形式の文字列に変換するオブジェクトを指定します。

- **param** `options` -- [JSON::State](../../../class/JSON=3a=3aState.md) または、to_hash や to_h メソッドでハッシュに変換可能なオブジェクトを指定できます。
       ハッシュを使用する場合指定可能なオプションは [JSON?.generate](../../../method/JSON/m/generate.md) を参照してください。

```ruby title="例"
require "json"

hash = { "name": "tanaka", "age": 19 }
puts JSON.generate(hash)
# => {"name":"tanaka","age":19}

puts JSON.pretty_generate(hash)
# => {
#      "name": "tanaka",
#      "age": 19
#    }

puts JSON.pretty_generate(hash, space: "\t")
# => {
#      "name":  "tanaka",
#      "age": 19
#    }
```

- **SEE** [JSON?.generate](../../../method/JSON/m/generate.md)
