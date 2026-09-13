# JSON::State#as_json=

### def as_json -> Proc | nil
### def as_json=(prc)

`strict?` が真のとき、そのままでは JSON 形式の文字列に変換できないオブジェクトを
変換するために使用する `Proc` を取得・設定します。

設定した `Proc` は、変換できないオブジェクトが現れるたびに、そのオブジェクトと、
それがハッシュのキーとして使われているかどうかを表す真偽値の 2 引数で呼び出されます。
`Proc` の返り値が、代わりに JSON 形式の文字列への変換に使われます。

- **param** `prc` -- 変換できないオブジェクトを変換するための `Proc` を指定します。

```ruby title="例"
require "json"

state = JSON::State.new(strict: true, as_json: ->(obj, is_key) { obj.to_s })
p state.as_json.class             # => Proc
p JSON.generate([1, 2..3], state) # => "[1,\"2..3\"]"
```

- **SEE** [JSON::State#strict](../../../method/JSON=3a=3aState/i/strict.md)
