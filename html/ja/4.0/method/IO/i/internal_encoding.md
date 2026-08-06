# IO#internal_encoding

### def internal_encoding   -> Encoding | nil

IO の内部エンコーディングを返します。
内部エンコーディングが指定されていない場合は nil を返します。

```ruby title="例"
IO.write("testfile", "abcde")
File.open("testfile") do |f|
  p f.internal_encoding  # => nil
  f.set_encoding("ASCII-8BIT", "EUC-JP")
  p f.internal_encoding  # => #<Encoding:EUC-JP>
end
```
