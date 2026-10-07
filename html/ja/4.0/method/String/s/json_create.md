# String.json_create

### def String.json_create(hash) -> String
{: since="1.9.1"}

JSON のオブジェクトから Ruby の文字列を生成して返します。

- **param** `hash` -- キーとして "raw" という文字列を持ち、その値として数値の配列を持つハッシュを指定します。

```ruby title="例"
require 'json/add/string'

p String.json_create({"raw" => [0x41, 0x42, 0x43]}) # => "ABC"
```
