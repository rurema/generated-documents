# Regexp#names

### def names -> [String]

正規表現に含まれる名前付きキャプチャ(named capture)の名前を文字列の配列で返します。

```ruby title="例"
/(?<foo>.)(?<bar>.)(?<baz>.)/.names

# => ["foo", "bar", "baz"]
   p /(?<foo>.)(?<foo>.)/.names
# => ["foo"]

p /(.)(.)/.names
# => []
```
