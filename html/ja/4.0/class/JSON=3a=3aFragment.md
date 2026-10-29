# class JSON::Fragment < Struct

既に JSON 形式になっている文字列を、変換せずにそのまま出力に埋め込むためのクラスです。

[JSON?.generate](../method/JSON/m/generate.md) や [JSON::Coder#dump](../method/JSON=3a=3aCoder/i/dump.md) で変換するオブジェクトの中にこのクラスのインスタンスがあると、`json` の内容がそのまま挿入されます。
生成済みの JSON 形式の文字列をキャッシュしておき、組み合わせて出力するような用途に使います。

内容の検証やエスケープは行いません。`ascii_only` や `script_safe` などの生成オプションは内容には適用されず、[JSON?.pretty_generate](../method/JSON/m/pretty_generate.md) でもインデントされません。`strict` が真のときも使用できます。[JSON::State#as_json=](../method/JSON=3a=3aState/i/as_json=3d.md) に設定した `Proc` や [JSON::Coder.new](../method/JSON=3a=3aCoder/s/new.md) のブロックの返り値としても使用できます。

```ruby title="例"
require "json"

cached = JSON::Fragment.new('{"a":1}')
p cached.json                              # => "{\"a\":1}"
p cached.to_json                           # => "{\"a\":1}"
p JSON.generate({"x" => cached, "y" => 2}) # => "{\"x\":{\"a\":1},\"y\":2}"
p JSON.generate([cached], strict: true)    # => "[{\"a\":1}]"
puts JSON.pretty_generate({"x" => cached, "y" => 2})
# => {
#      "x": {"a":1},
#      "y": 2
#    }
```

```ruby title="例 内容は検証もエスケープもされない"
require "json"

p JSON.generate([JSON::Fragment.new('"é"'), "é"], ascii_only: true)      # => "[\"é\",\"\\u00e9\"]"
p JSON.generate([JSON::Fragment.new('"a/b"'), "a/b"], script_safe: true) # => "[\"a/b\",\"a\\/b\"]"
p JSON.generate([JSON::Fragment.new("not json")])                        # => "[not json]"
```

## Class Methods

- [new](../method/JSON=3a=3aFragment/s/new.md)

## Instance Methods

- [json](../method/JSON=3a=3aFragment/i/json.md)
- [json=](../method/JSON=3a=3aFragment/i/json=3d.md)
- [to_json](../method/JSON=3a=3aFragment/i/to_json.md)
