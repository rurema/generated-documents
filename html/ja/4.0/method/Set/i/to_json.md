# Set#to_json

### def to_json(*args) -> String
{: since="2.7.0"}

自身を JSON 形式の文字列に変換して返します。

内部的には [Set#as_json](../../../method/Set/i/as_json.md) で得たハッシュに対して [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) を呼び出しています。

- **param** `args` -- 引数はそのまま [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md) に渡されます。

```ruby title="例"
require 'json/add/set'

p Set[1, 2, 3].to_json # => "{\"json_class\":\"Set\",\"a\":[1,2,3]}"
```

- **SEE** [JSON::Ext::Generator::GeneratorMethods::Hash#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aHash/i/to_json.md)
