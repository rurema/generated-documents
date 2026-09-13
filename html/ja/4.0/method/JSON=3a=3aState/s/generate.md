# JSON::State.generate

### def JSON::State.generate(obj, options, io) -> String | IO

`obj` と `options` から一時的な [JSON::State](../../../class/JSON=3a=3aState.md) を作成し、それを使って
`obj` から JSON 形式の文字列を生成します。

- **param** `obj` -- JSON 形式の文字列に変換するオブジェクトを指定します。
- **param** `options` -- [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md) に指定するのと同様のオプションをハッシュで指定します。
           nil を指定した場合、オプション無しで初期化した [JSON::State](../../../class/JSON=3a=3aState.md) を使用します。
- **param** `io` -- 生成した文字列の書き込み先を、`write` メソッドを持つオブジェクトで指定します。
           nil を指定した場合は、生成した文字列をそのまま返します。
- **return** -- `io` を指定しなかった場合は生成した JSON 形式の文字列を返します。
           `io` を指定した場合は、そこに書き込んだ上で `io` を返します。

```ruby title="例"
require "json"

p JSON::State.generate({b: 1, a: 2}, nil, nil) # => "{\"b\":1,\"a\":2}"
p JSON::State.generate({b: 1, a: 2}, {indent: "  ", object_nl: "\n"}, nil)
# => "{\n  \"b\":1,\n  \"a\":2\n}"
```

- **SEE** [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md), [JSON::State#generate](../../../method/JSON=3a=3aState/i/generate.md)
