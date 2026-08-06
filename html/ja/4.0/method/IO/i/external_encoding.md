# IO#external_encoding

### def external_encoding   -> Encoding | nil

IO の外部エンコーディングを返します。
外部エンコーディングが指定されていない場合は nil を返します。
ただし読み込み専用モードの場合は [Encoding.default_external](../../../method/Encoding/s/default_external.md) になります。

```ruby title="例"
IO.write("testfile", "abcde")
p File.open("testfile") { |f| p f.external_encoding } # => #<Encoding:UTF-8>
```
