# Rational#to_json

### def to_json(*args) -> String

自身を JSON 形式の文字列に変換して返します。

内部的にはハッシュにデータをセットしてから [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) を呼び出しています。

- **param** `args` -- 引数はそのまま [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md)
            に渡されます。

```ruby title="例"
require 'json/add/rational'
p (1/3r).to_json # => "{\"json_class\":\"Rational\",\"n\":1,\"d\":3}"
```

- **SEE** [JSON::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md)
