# JSON::Coder.new

### def JSON::Coder.new(options = nil) {|object| ... } -> JSON::Coder

自身を初期化します。

options には、JSON 形式の文字列を生成する際([JSON?.generate](../../../method/JSON/m/generate.md))とパースする際([JSON?.parse](../../../method/JSON/m/parse.md))の両方に使われるオプションをハッシュで指定します。
ただし、生成に関しては常に `strict: true` を指定した場合と同様に扱われます。
すなわち、文字列・シンボル・整数・浮動小数点数・配列・ハッシュ・true・false・nil
以外のオブジェクトを変換しようとすると、ブロックが指定されていない限り
[JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。

ブロックを指定すると、上記のような JSON にネイティブ対応していない型のオブジェクトを生成しようとしたときにそのブロックが呼び出されます。ブロックには対象のオブジェクトが渡され、
JSON にネイティブ対応した値(文字列など)を返す必要があります。ブロックの戻り値もネイティブ対応していない型であった場合はエラーになります。

- **param** `options` -- ハッシュを指定します。指定可能なオプションは
  [JSON?.generate](../../../method/JSON/m/generate.md), [JSON?.parse](../../../method/JSON/m/parse.md) を参照してください。

```ruby title="例 options はパースと生成の両方に適用される"
require "json"

coder = JSON::Coder.new(symbolize_names: true)
p coder.load('{"name":"Ruby","version":"3.4"}') # => {name: "Ruby", version: "3.4"}
p coder.dump(name: "Ruby", version: "3.4")       # => "{\"name\":\"Ruby\",\"version\":\"3.4\"}"
```

```ruby title="例 ブロックを指定しない場合、未対応の型はエラーになる"
require "json"

coder = JSON::Coder.new
begin
  coder.dump(1..3)
rescue JSON::GeneratorError => e
  p e.message # => "Range not allowed in JSON"
end
```
