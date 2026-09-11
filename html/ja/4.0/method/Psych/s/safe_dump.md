# Psych.safe_dump

### def Psych.safe_dump(o, options = {}) -> String
### def Psych.safe_dump(o, io, options = {}) -> ()

Ruby のオブジェクト o を安全に YAML ドキュメントに変換します。

[Psych.dump](../../../method/Psych/s/dump.md) と同様の変換を行いますが、デフォルトでは以下のクラスのオブジェクトしか変換しません。

- TrueClass
- FalseClass
- NilClass
- Integer
- Float
- String
- Array
- Hash

options のキー permitted_classes を指定すると、変換を許可するクラスを追加できます。

```ruby title="permitted_classes に Date を渡した例"
require 'psych'
require 'date'

Psych.safe_dump(Date.today, permitted_classes: [Date])
```

o が permitted_classes で許可されていないクラスのオブジェクトを含む場合は、
Psych::DisallowedClass 例外が発生します。

io に IO オブジェクトを指定した場合は、変換されたドキュメントがその IO に書き込まれます。
指定しなかった場合は変換されたドキュメントが文字列としてメソッドの返り値となります。

options でその他に指定できる項目は [Psych.dump](../../../method/Psych/s/dump.md) と同じです。

- **param** `o` -- 変換するオブジェクト
- **param** `io` -- 出力先
- **param** `options` -- 出力オプション(permitted_classes を含む)
- **raise** `Psych::DisallowedClass` -- o が permitted_classes で許可されていないクラスのオブジェクトを含むときに発生します
- **SEE** [Psych.dump](../../../method/Psych/s/dump.md), [Psych.safe_load](../../../method/Psych/s/safe_load.md)
