# IPAddr#to_json

### def to_json(*args) -> String

`self` を JSON 形式の文字列に変換して返します。内部で [IPAddr#as_json](../../../method/IPAddr/i/as_json.md) を呼び出し、その結果を二重引用符で囲んだ文字列を返します。

- **param** `args` -- JSON ライブラリとの互換性のために受け取りますが、使用されません。

```ruby title="例"
require "ipaddr"
p IPAddr.new("192.168.1.1").to_json      # => "\"192.168.1.1\""
p IPAddr.new("192.168.1.0/24").to_json   # => "\"192.168.1.0/24\""
```

- **SEE** [IPAddr#as_json](../../../method/IPAddr/i/as_json.md)
