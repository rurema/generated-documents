# JSON::GeneratorError#invalid_object

### def invalid_object -> object

JSON 形式の文字列に変換できなかったオブジェクトを返します。
どのオブジェクトが原因でエラーになったのかを調べる助けになります。

```ruby title="例"
require "json"

begin
  JSON.generate([Object.new], strict: true)
rescue JSON::GeneratorError => e
  p e.invalid_object.class # => Object
  p e.message               # => "Object not allowed in JSON"
end
```
