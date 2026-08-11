# Set#join

### def join(separator = nil) -> String

各要素を文字列に変換し、separator を間に挟んで連結した文字列を返します。

[Set#to_a](../../../method/Set/i/to_a.md) してから [Array#join](../../../method/Array/i/join.md) を呼ぶのと同じです。
要素の順序は不定なので、連結される順序も不定です。

- **param** `separator` -- 間に挟む文字列を指定します。nil を指定した場合と省略した場合は、間に何も挟まずに連結します。

```ruby
p Set[1, 2, 3].join       # => "123"
p Set[1, 2, 3].join(", ") # => "1, 2, 3"
p Set[].join(", ")        # => ""
```

- **SEE** [Array#join](../../../method/Array/i/join.md), [Set#to_a](../../../method/Set/i/to_a.md)
