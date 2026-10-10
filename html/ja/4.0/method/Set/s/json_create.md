# Set.json_create

### def Set.json_create(object) -> Set
{: since="2.7.0"}

JSON のオブジェクトから Ruby のオブジェクトを生成して返します。

- **param** `object` -- キー `'a'` に要素の配列を持つハッシュを指定します。

```ruby title="例"
require 'json/add/set'

set = Set.json_create({"json_class" => "Set", "a" => [1, 2, 3]})
p set # => Set[1, 2, 3]
```
