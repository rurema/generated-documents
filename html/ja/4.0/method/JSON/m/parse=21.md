# JSON?.parse!

### module_function def parse!(source, options = {}) -> object

与えられた JSON 形式の文字列を Ruby オブジェクトに変換して返します。

[JSON?.parse](../../../method/JSON/m/parse.md) よりも危険なデフォルト値が指定されているので信頼できる文字列のみを入力として使用するようにしてください。

- **param** `source` -- JSON 形式の文字列を指定します。

- **param** `options` -- オプションをハッシュで指定します。
       指定可能なオプションは以下の通りです。

- **`:max_nesting`**:
  入れ子になっているデータの最大の深さを指定します。
  数値を指定すると深さのチェックを行います。偽を指定すると深さのチェックを行いません。
  デフォルトは偽です。
- **`:allow_nan`**:
  真を指定すると [rfc:4627] を無視してパース時に [JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md),
  [JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を許可するようになります。デフォルトは真です。
- **`:create_additions`**:
  偽を指定するとマッチするクラスや [JSON.create_id](../../../method/JSON/s/create_id.md) が見つかっても付加情報を生成しません。
  デフォルトは偽です。

  ```ruby title="例"
  require "json"

  json_text = "[1,2,{\"name\":\"tanaka\",\"age\":19}, NaN]"
  JSON.parse!(json_text)
  # => [1, 2, {"name"=>"tanaka", "age"=>19}, NaN]

  JSON.parse!(json_text, symbolize_names: true)
  # => [1, 2, {:name=>"tanaka", :age=>19}, NaN]

  JSON.parse(json_text) # => unexpected token at 'NaN]' (JSON::ParserError)
  ```

- **SEE** [JSON::Parser#parse](../../../method/JSON=3a=3aParser/i/parse.md)
