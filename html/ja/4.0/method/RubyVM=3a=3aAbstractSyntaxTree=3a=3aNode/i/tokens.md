# RubyVM::AbstractSyntaxTree::Node#tokens

### def tokens -> Array | nil

self に対応する部分のトークンの配列を返します。

各トークンは `[id, type, ソース文字列, 位置情報]` の 4 要素の配列です。
位置情報は `[first_lineno, first_column, last_lineno, last_column]` の配列です。

keep_tokens を有効にしてパースした場合にだけ利用でき、そうでない場合は nil を返します。

```ruby
root = RubyVM::AbstractSyntaxTree.parse("x = 1", keep_tokens: true)
pp root.tokens
# => [[0, :tIDENTIFIER, "x", [1, 0, 1, 1]],
#     [1, :tSP, " ", [1, 1, 1, 2]],
#     [2, :"=", "=", [1, 2, 1, 3]],
#     [3, :tSP, " ", [1, 3, 1, 4]],
#     [4, :tINTEGER, "1", [1, 4, 1, 5]]]
```

- **SEE** [RubyVM::AbstractSyntaxTree::Node#all_tokens](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/all_tokens.md), [RubyVM::AbstractSyntaxTree.parse](../../../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse.md)
