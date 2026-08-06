# Symbol#encoding

### def encoding   -> Encoding

シンボルに対応する文字列のエンコーディング情報を表現した [Encoding](../../../class/Encoding.md) オブジェクトを返します。

```ruby title="例"
# encoding: utf-8

p :foo.encoding      # => #<Encoding:US-ASCII>
p :あかさたな.encoding # => #<Encoding:UTF-8>
```

- **SEE** [String#encoding](../../../method/String/i/encoding.md)
