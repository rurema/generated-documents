# JSON::State.new

### def JSON::State.new(options = {}) -> JSON::State

自身を初期化します。

- **param** `options` -- ハッシュを指定します。
       指定可能なオプションは以下の通りです。

- **`:indent`**:
  インデントに使用する文字列を指定します。デフォルトは空文字列です。
- **`:space`**:
  JSON 形式の文字列のトークン間に挿入する文字列を指定します。デフォルトは空文字列です。
- **`:space_before`**:
  JSON 形式の文字列中で JavaScript のオブジェクトを表す部分にある ':' の前に挿入する文字列をセットします。デフォルトは空文字列です。
- **`:object_nl`**:
  JSON 形式の文字列中に現れる JavaScript のオブジェクトの行末に挿入する文字列を指定します。
  デフォルトは空文字列です。
- **`:array_nl`**:
  JSON 形式の文字列中に現れる JavaScript の配列の行末に挿入する文字列を指定します。
  デフォルトは空文字列です。
- **`:check_circular`**:
  真を指定した場合、生成するオブジェクトの循環をチェックします。
  この動作がデフォルトです。
- **`:allow_nan`**:
  真を指定した場合、[JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),
  [JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を生成することを許すようになります。
  偽を指定した場合、これらの値を生成しようとすると例外が発生します。
  デフォルトは偽です。
- **`:ascii_only`**:
  真を指定した場合、ASCII 文字列のみを用いて JSON 形式の文字列を生成します。
  デフォルトは偽です。
- **`:max_nesting`**:
  入れ子になっているデータの最大の深さを指定します。
  0 を指定すると深さのチェックを行いません。デフォルトは 100 です。
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
- **`:buffer_initial_length`**:
  JSON 形式の文字列を生成する際に使用する内部バッファの初期の長さを指定します。デフォルトは 1024 です。

  ```ruby title="例 Hash を指定"
  require "json"

  json_state = JSON::State.new(indent: "\t")
  json_state.class  # => JSON::Ext::Generator::State
  json_state.indent # => "\t"
  ```

  ```ruby title="例 JSON::State を指定"
  require "json"

  json_state = JSON::State.new(indent: "\t")
  copy = JSON::State.new(json_state)
  copy.class  # => JSON::Ext::Generator::State
  copy.indent # => "\t"
  ```
