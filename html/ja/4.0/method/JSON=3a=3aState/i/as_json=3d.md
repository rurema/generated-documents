# JSON::State#as_json=

### def as_json -> Proc | false
### def as_json=(prc)

`strict?` が真のとき、JSON にネイティブ対応していないオブジェクトを変換するために使用する `Proc` を取得・設定します。

設定していなければ `as_json` は偽を返します。

設定した `Proc` は、変換できないオブジェクトが現れるたびに、そのオブジェクトと、
それがハッシュのキーとして使われているかどうかを表す真偽値の 2 引数で呼び出されます。`Proc` の返り値が、そのオブジェクトの代わりに変換されます。
返り値の中にさらに変換できないオブジェクトが含まれていれば、それに対しても呼び出されます。[JSON::Fragment](../../../class/JSON=3a=3aFragment.md) を返すと、その内容がそのまま挿入されます。
ハッシュのキーに対する返り値は [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) でなければなりません。
不正なエンコーディングの文字列に対しても呼び出されます。

`strict?` が偽のときは使用されません。

- **param** `prc` -- 変換できないオブジェクトを変換するための `Proc` を指定します。

- **raise** `TypeError` -- `Proc` に変換できないオブジェクトを設定しようとした場合に発生します。

- **raise** `JSON::GeneratorError` -- `Proc` の返り値が JSON にネイティブ対応していないオブジェクトだった場合に、JSON 形式の文字列を生成するときに発生します。

```ruby title="例"
require "json"

state = JSON::State.new(strict: true, as_json: ->(obj, is_key) { obj.to_s })
p state.as_json.class             # => Proc
p JSON.generate([1, 2..3], state) # => "[1,\"2..3\"]"
p JSON.generate({1 => 2}, state)  # => "{\"1\":2}"
p JSON::State.new.as_json         # => false
```

```ruby title="例 返り値はさらに変換される"
require "json"

JSON.generate([1..2], strict: true, as_json: ->(obj, is_key) { obj.to_a.map { |i| i * 10 } }) # => "[[10,20]]"
JSON.generate([1..2], strict: true, as_json: ->(obj, is_key) { Object.new })                  # ~> Object not allowed in JSON (JSON::GeneratorError)
```

- **SEE** [JSON::State#strict=](../../../method/JSON=3a=3aState/i/strict=3d.md), [JSON::Coder](../../../class/JSON=3a=3aCoder.md)
