# Time#to_json

### def to_json(*args) -> String

自身を JSON 形式の文字列に変換して返します。

内部的にはハッシュにデータをセットしてから [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) を呼び出しています。

- **param** `args` -- 引数はそのまま [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) に渡されます。

```ruby title="例"
require "json/add/core"

p Time.now.to_json # => "{\"json_class\":\"Time\",\"s\":1544968675,\"n\":676167000}"
```

- **SEE** [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md)
