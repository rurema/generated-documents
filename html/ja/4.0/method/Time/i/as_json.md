# Time#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Time#to_json](../../../method/Time/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'s'` に 1970-01-01 からの
経過秒数([Time#tv_sec](../../../method/Time/i/tv_sec.md) の返り値)が、`'n'` にナノ秒未満の端数([Time#tv_nsec](../../../method/Time/i/tv_nsec.md) の
返り値)が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/time'

t = Time.at(1700000000, 123456, :usec)
hash = t.as_json
p hash['json_class'] # => "Time"
p hash['s']           # => 1700000000
p hash['n']           # => 123456000
```

- **SEE** [Time#to_json](../../../method/Time/i/to_json.md), [Time.json_create](../../../method/Time/s/json_create.md)
