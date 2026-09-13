# JSON::Parser.parse

### def JSON::Parser.parse(source, options) -> object

`JSON::Parser.new(source, options).parse` と同様に、`source` をパースして
その結果を返します。[JSON::Parser.new](../../../method/JSON=3a=3aParser/s/new.md) でインスタンスを作らずに直接パースできる分、
高速です。

- **param** `source` -- パースする文字列を指定します。
- **param** `options` -- オプションを指定するためのハッシュです。nil も指定できます。
           指定可能なオプションは [JSON::Parser.new](../../../method/JSON=3a=3aParser/s/new.md) と同様です。

```ruby title="例"
require "json"

p JSON::Parser.parse(%q({"a":1}), {})                    # => {"a" => 1}
p JSON::Parser.parse(%q({"a":1}), symbolize_names: true) # => {a: 1}
```

- **SEE** [JSON::Parser.new](../../../method/JSON=3a=3aParser/s/new.md)
