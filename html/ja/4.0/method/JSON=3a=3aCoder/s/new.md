# JSON::Coder.new

### def JSON::Coder.new(options = nil) {|object, is_key| ... } -> JSON::Coder

自身を初期化します。

options には、JSON 形式の文字列を生成する際([JSON?.generate](../../../method/JSON/m/generate.md))とパースする際([JSON?.parse](../../../method/JSON/m/parse.md))の両方に使われるオプションをハッシュで指定します。
ただし、生成に関しては常に `strict: true` を指定した場合と同様に扱われます。
すなわち、文字列・シンボル・整数・浮動小数点数・配列・ハッシュ・true・false・nil
以外のオブジェクトを変換しようとすると、ブロックが指定されていない限り
[JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。

ブロックを指定すると、上記のような JSON にネイティブ対応していない型のオブジェクトを生成しようとしたときにそのブロックが呼び出されます。
ブロックには対象のオブジェクトと、それがハッシュのキーとして使われているかどうかを表す真偽値が渡されます。
ブロックの返り値が、そのオブジェクトの代わりに変換されます。
返り値の中にさらにネイティブ対応していないオブジェクトが含まれていれば、それに対してもブロックが呼び出されます。[JSON::Fragment](../../../class/JSON=3a=3aFragment.md) を返すと、その内容がそのまま挿入されます。
ハッシュのキーに対する返り値は [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) でなければなりません。
不正なエンコーディングの文字列や、ASCII 以外のバイトを含む BINARY(ASCII-8BIT)エンコーディングの文字列に対してもブロックが呼び出されます。
ブロックの返り値もネイティブ対応していない型であった場合は [JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。

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

```ruby title="例 ハッシュのキーと値でブロックの引数が異なる"
require "json"

coder = JSON::Coder.new do |object, is_key|
  is_key ? object.to_s : object.to_a
end
p coder.dump({1..2 => 3..4, "k" => 5..6}) # => "{\"1..2\":[3,4],\"k\":[5,6]}"
```

```ruby title="例 JSON::Fragment で生成済みの JSON を埋め込む"
require "json"

cached = '{"id":1,"name":"Ruby"}'
coder = JSON::Coder.new { |object| JSON::Fragment.new(cached) }
p coder.dump({"item" => Object.new}) # => "{\"item\":{\"id\":1,\"name\":\"Ruby\"}}"
```

- **SEE** [JSON::State#as_json=](../../../method/JSON=3a=3aState/i/as_json=3d.md), [JSON::State#strict=](../../../method/JSON=3a=3aState/i/strict=3d.md)
