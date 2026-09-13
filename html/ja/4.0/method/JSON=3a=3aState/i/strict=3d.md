# JSON::State#strict=

### def strict -> bool
### def strict? -> bool
### def strict=(enable)

JSON 形式で表現できない型のオブジェクトが現れたときの挙動を取得・設定します。

偽の場合(デフォルト)、JSON 形式で表現できない型のオブジェクトは文字列に変換されて出力されます。
真の場合、そのようなオブジェクトが現れると [JSON::GeneratorError](../../../class/JSON=3a=3aGeneratorError.md) が発生します。

- **param** `enable` -- 真を指定すると、JSON 形式で表現できない型のオブジェクトが現れたときに
           例外を発生させるようになります。

- **raise** `JSON::GeneratorError` -- `strict?` が真の状態で、JSON 形式で表現できない
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

- **SEE** `JSON::State#as_json=`
