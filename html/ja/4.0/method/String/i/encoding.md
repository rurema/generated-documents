# String#encoding

### def encoding   -> Encoding

文字列のエンコーディング情報を表現した Encoding オブジェクトを返します。

```ruby title="例"
# encoding: utf-8
utf8_str = "test"
euc_str = utf8_str.encode("EUC-JP")
p utf8_str.encoding # => #<Encoding:UTF-8>
p euc_str.encoding  # => #<Encoding:EUC-JP>
```

- **SEE** [Encoding](../../../class/Encoding.md)
