# DateTime#to_json

### def to_json(*args) -> String

自身を JSON 形式の文字列に変換して返します。

内部的にはハッシュにデータをセットしてから [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) を呼び出しています。

- **param** `args` -- 引数はそのまま [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) に渡されます。

```ruby title="例"
require "json/add/core"

p DateTime.now.to_json
# => "{\"json_class\":\"DateTime\",\"y\":2018,\"m\":12,\"d\":10,\"H\":1,\"M\":28,\"S\":57,\"of\":\"3/8\",\"sg\":2299161.0}"
```

- **SEE** [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md)
