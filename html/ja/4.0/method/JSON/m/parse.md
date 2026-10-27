# JSON?.parse

### module_function def parse(source, options = {}) -> object

与えられた JSON 形式の文字列を Ruby オブジェクトに変換して返します。

- **param** `source` -- JSON 形式の文字列を指定します。

- **param** `options` -- オプションをハッシュで指定します。
       指定可能なオプションは以下の通りです。

- **`:max_nesting`**:
  入れ子になっているデータの最大の深さを指定します。
  偽を指定すると深さのチェックを行いません。デフォルトは 100 です。
- **`:allow_nan`**:
  真を指定すると [rfc:4627] を無視してパース時に [JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),
  [JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を許可するようになります。デフォルトは偽です。
- **`:create_additions`**:
  偽を指定するとマッチするクラスや [JSON.create_id](../../../method/JSON/s/create_id.md) が見つかっても付加情報を生成しません。
  デフォルトは偽です。
- **`:object_class`**:
  JSON のオブジェクトを変換するクラスを指定します。デフォルトは [Hash](../../../class/Hash.md) です。
- **`:array_class`**:
  JSON の配列を変換するクラスを指定します。デフォルトは [Array](../../../class/Array.md) です。
- **`:symbolize_names`**:
  真を指定するとハッシュのキーを文字列ではなくシンボルにします。デフォルトは偽です。
- **`:freeze`**:
  真を指定すると、パースした結果のすべてのオブジェクト(文字列・配列・ハッシュ)を凍結して返します。
  同じ内容の文字列は同一のオブジェクトになります。デフォルトは偽です。
- **`:decimal_class`**:
  JSON の小数を変換するクラスを指定します。デフォルトは nil で、[Float](../../../class/Float.md) に変換します。
- **`:allow_trailing_comma`**:
  真を指定すると、配列やオブジェクトの末尾の余分なカンマを許可します。デフォルトは偽です。
- **`:allow_control_characters`**:
  真を指定すると、文字列中のエスケープされていない ASCII 制御文字(改行など)を許可します。デフォルトは偽です。
- **`:allow_duplicate_key`**:
  真を指定すると、オブジェクト内でキーが重複している場合に後の値を採用します。
  偽を指定すると、キーが重複している場合に [JSON::ParserError](../../../class/JSON=3a=3aParserError.md) が発生します。
  デフォルトでは警告を出して後の値を採用します。

```ruby title="例"
require "json"

JSON.parse('[1,2,{"name":"tanaka","age":19}]')
# => [1, 2, {"name" => "tanaka", "age" => 19}]

JSON.parse('[1,2,{"name":"tanaka","age":19}]', symbolize_names: true)
# => [1, 2, {name: "tanaka", age: 19}]
```

```ruby title="例 パースのオプション"
require "json"
require "bigdecimal"

JSON.parse('[1.5]', decimal_class: BigDecimal) # => [0.15e1]

a = JSON.parse('["x","x"]', freeze: true)
a.frozen?         # => true
a[0].frozen?      # => true
a[0].equal?(a[1]) # => true

JSON.parse('[1, 2,]', allow_trailing_comma: true)   # => [1, 2]
JSON.parse('{"a": 1,}', allow_trailing_comma: true) # => {"a" => 1}

JSON.parse("\"a\nb\"", allow_control_characters: true) # => "a\nb"
JSON.parse('{"a":1,"a":2}', allow_duplicate_key: true)  # => {"a" => 2}
```

- **SEE** [JSON::Parser#parse](../../../method/JSON=3a=3aParser/i/parse.md)
