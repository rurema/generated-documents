# JSON?.fast_generate

### module_function def fast_generate(object) -> String
### module_function def fast_unparse(object) -> String

与えられたオブジェクトを一行の JSON 形式の文字列に変換して返します。

このメソッドは循環参照のチェックを無効にしています。また、
[JSON::NaN](../../../method/JSON/c/NaN.md), [JSON::Infinity](../../../method/JSON/c/Infinity.md), [JSON::MinusInfinity](../../../method/JSON/c/MinusInfinity.md) を生成することがあります。
このため容易に無限ループを発生させることができるので、気をつけてください。

fast_unparse は将来削除される予定です。

- **param** `object` -- JSON 形式の文字列に変換するオブジェクトを指定します。

```ruby title="例"
require "json"

p JSON.fast_generate({ name: "tanaka", age: 19 }) # => "{\"name\":\"tanaka\",\"age\":19}"
```
