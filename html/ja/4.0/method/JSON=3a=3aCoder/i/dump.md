# JSON::Coder#dump

### def dump(object) -> String
### def dump(object, io) -> IO
### def generate(object) -> String
### def generate(object, io) -> IO

object を JSON 形式の文字列に変換します。

io を指定した場合は、生成した JSON 形式の文字列を io に書き込み、io 自身を返します。
指定しない場合は、生成した文字列を返します。

generate は dump の別名です。

- **param** `object` -- JSON 形式の文字列に変換するオブジェクトを指定します。

- **param** `io` -- [IO](../../../class/IO.md) のように write メソッドを実装しているオブジェクトを指定します。

- **raise** `JSON::GeneratorError` -- object(またはその内部の値)が JSON にネイティブ対応しておらず、[JSON::Coder.new](../../../method/JSON=3a=3aCoder/s/new.md) にブロックも指定されていなかった場合に発生します。

```ruby title="例"
require "json"

coder = JSON::Coder.new
p coder.dump({ "name" => "Ruby" }) # => "{\"name\":\"Ruby\"}"
p coder.generate({ "name" => "Ruby" }) # => "{\"name\":\"Ruby\"}"
```
