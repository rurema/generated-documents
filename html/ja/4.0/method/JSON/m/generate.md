# JSON?.generate

### module_function def generate(object, state = nil) -> String
### module_function def unparse(object, state = nil) -> String

与えられたオブジェクトを一行の JSON 形式の文字列に変換して返します。

デフォルトでは、サイズが最小となる JSON 形式の文字列を生成します。
また、循環参照のチェックを行います。[JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),
[JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を生成することもありません。

unparse は将来削除される予定です。

- **param** `object` -- JSON 形式の文字列に変換するオブジェクトを指定します。

- **param** `state` -- [JSON::State](../../../class/JSON=3a=3aState.md) または、to_hash や to_h メソッドでハッシュに変換可能なオブジェクトを指定できます。
       ハッシュを使用する場合指定可能なオプションは以下の通りです。

- **`:indent`**:
  インデントに使用する文字列を指定します。デフォルトは空文字列です。
- **`:space`**:
  a string that is put after, a : or , delimiter (default: '')
- **`:space_before`**:
  a string that is put before a : pair delimiter (default: '')
- **`:object_nl`**:
  a string that is put at the end of a JSON object (default: '')
- **`:array_nl`**:
  a string that is put at the end of a JSON array (default: '')
- **`:check_circular`**:
  真を指定した場合、生成するオブジェクトの循環をチェックします。
  この動作がデフォルトです。
- **`:allow_nan`**:
  真を指定した場合、[JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),
  [JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を生成することを許すようになります。
  偽を指定した場合、これらの値を生成しようとすると例外が発生します。
  デフォルトは偽です。
- **`:max_nesting`**:
  入れ子になっているデータの最大の深さを指定します。
  偽を指定すると深さのチェックを行いません。デフォルトは 100 です。
- **`:ascii_only`**:
  真を指定すると、ASCII 以外の文字を `\uXXXX` の形式にエスケープします。デフォルトは偽です。
- **`:script_safe`**:
  真を指定すると、`/` を `\/` に、U+2028・U+2029 を `\u2028`・`\u2029` にエスケープし、
  JavaScript に埋め込んでも安全な JSON 形式の文字列を生成します。デフォルトは偽です。
- **`:escape_slash`**:
  `:script_safe` の別名です。
- **`:strict`**:
  真を指定すると、nil・true・false・[Integer](../../../class/Integer.md)・[Float](../../../class/Float.md)・[String](../../../class/String.md)・[Array](../../../class/Array.md)・[Hash](../../../class/Hash.md) 以外のオブジェクトを
  `to_json` や `to_s` で変換せず、[JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) を発生させます。
  [Symbol](../../../class/Symbol.md) は文字列として変換します。デフォルトは偽です。
- **`:allow_duplicate_key`**:
  真を指定すると、キーを文字列に変換した結果が重複するハッシュ(`{foo: 1, "foo" => 2}` など)をそのまま出力します。
  偽を指定すると [JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。
  デフォルトでは警告を出してそのまま出力します。

- **raise** `JSON::GeneratorError` -- [JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),[JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md)
       を生成しようとした場合に発生します。

- **raise** `JSON::CircularDatastructure` -- 与えられたオブジェクトが循環参照を持つ場合に発生します。

ASCII 以外のバイトを含む BINARY(ASCII-8BIT)エンコーディングの文字列は UTF-8 として扱い、非推奨の警告を出します。


```ruby title="例"
require "json"

p JSON.generate([1, 2, { name: "tanaka", age: 19 }])
# => "[1,2,{\"name\":\"tanaka\",\"age\":19}]"
json_state = JSON::State.new(space: " ")
p JSON.generate([1, 2, { name: "tanaka", age: 19 }], json_state)
# => "[1,2,{\"name\": \"tanaka\",\"age\": 19}]"
```

- **SEE** [JSON::State](../../../class/JSON=3a=3aState.md), [JSON?.pretty_generate](../../../method/JSON/m/pretty_generate.md)
