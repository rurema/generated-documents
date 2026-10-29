# JSON::State#strict?

### def strict -> bool
### def strict? -> bool
### def strict=(enable)

JSON にネイティブ対応していない型のオブジェクトが現れたときの挙動を取得・設定します。

偽の場合(デフォルト)、nil・true・false・[Integer](../../../class/Integer.md)・[Float](../../../class/Float.md)・[String](../../../class/String.md)・[Symbol](../../../class/Symbol.md)・[Array](../../../class/Array.md)・[Hash](../../../class/Hash.md) 以外のオブジェクトは `to_json` メソッドを呼び出して変換します
([JSON::Ext::Generator::GeneratorMethods::Object#to_json](../../../method/JSON=3a=3aExt=3a=3aGenerator=3a=3aGeneratorMethods=3a=3aObject/i/to_json.md) は `to_s` の結果の文字列にします)。
真の場合、そのようなオブジェクトが現れると [JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します(`to_json` メソッドを定義していても呼び出されません)。

真の場合、[Symbol](../../../class/Symbol.md) は値としても許可されます。
ハッシュのキーは [String](../../../class/String.md) と [Symbol](../../../class/Symbol.md) 以外だと [JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。
[JSON::State#as_json=](../../../method/JSON=3a=3aState/i/as_json=3d.md) で `Proc` を設定していれば、例外を発生させる代わりにそれで変換します。

- **param** `enable` -- 真を指定すると、JSON にネイティブ対応していない型のオブジェクトが現れたときに
           例外を発生させるようになります。

- **raise** `JSON::GeneratorError` -- `strict?` が真の状態で、JSON にネイティブ対応していない
           型のオブジェクトを変換しようとした場合に発生します。

```ruby title="例"
require "json"

state = JSON::State.new(strict: true)
p state.strict?                            # => true
begin
  JSON.generate([Object.new], state)
rescue JSON::GeneratorError => e
  p e.message # => "Object not allowed in JSON"
end
```


```ruby title="例 ハッシュのキー"
require "json"

JSON.generate({1 => 2}, strict: true)                                        # ~> Integer not allowed as object key in JSON (JSON::GeneratorError)
JSON.generate({1 => 2}, strict: true, as_json: ->(obj, is_key) { obj.to_s }) # => "{\"1\":2}"
```

- **SEE** [JSON::State#as_json=](../../../method/JSON=3a=3aState/i/as_json=3d.md), [JSON::Coder](../../../class/JSON=3a=3aCoder.md)
