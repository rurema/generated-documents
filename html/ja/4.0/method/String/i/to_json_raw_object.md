# String#to_json_raw_object

### def to_json_raw_object -> Hash
{: since="1.9.1"}

生の文字列を格納したハッシュを生成します。

このメソッドは UTF-8 の文字列ではなく生の文字列を JSON に変換する場合に使用してください。

```ruby title="例"
require 'json/add/string'

p "にほんご".encode("euc-jp").to_json_raw_object
# => {"json_class" => "String", "raw" => [164, 203, 164, 219, 164, 243, 164, 180]}
```
