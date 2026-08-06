# String#each_byte

### def each_byte {|byte| ... } -> self
### def each_byte -> Enumerator

文字列の各バイトに対して繰り返します。

```ruby title="例"
"str".each_byte do |byte|
  p byte
end
    # => 115
    # => 116
    # => 114

"あ".each_byte do |byte|
  p byte
end
    # => 227
    # => 129
    # => 130
```

- **SEE** [String#bytes](../../../method/String/i/bytes.md)
