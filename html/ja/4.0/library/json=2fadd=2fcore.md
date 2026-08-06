# library json/add/core

Ruby のコアクラスに JSON 形式の文字列に変換するメソッドや
JSON 形式の文字列から Ruby のオブジェクトに変換するメソッドを定義します。

json/add/core サブライブラリを require すると、例えば [Range](../class/Range.md) オブジェクトを JSON 形式の文字列にしたり、[Range](../class/Range.md) オブジェクトに戻す事ができます。

```ruby title="例"
require 'json/add/core'
p (1..10).to_json          # => "{\"json_class\":\"Range\",\"a\":[1,10,false]}"
p JSON.load((1..10).to_json) # => 1..10
```
