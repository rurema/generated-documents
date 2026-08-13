# RubyVM::AbstractSyntaxTree::Node#all_tokens

### def all_tokens -> Array | nil

self を含むスクリプト全体のトークンの配列を返します。
各トークンの形式は [RubyVM::AbstractSyntaxTree::Node#tokens](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/tokens.md) と同じです。

keep_tokens を有効にしてパースした場合にだけ利用でき、そうでない場合は nil を返します。

```ruby
root = RubyVM::AbstractSyntaxTree.parse("x = 1", keep_tokens: true)
p root.all_tokens.size # => 5
```

- **SEE** [RubyVM::AbstractSyntaxTree::Node#tokens](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/tokens.md)
