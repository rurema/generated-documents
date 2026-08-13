# RubyVM::AbstractSyntaxTree::Node#script_lines

### def script_lines -> Array | nil

スクリプト全体の各行を要素とする文字列の配列を返します。

keep_script_lines を有効にしてパースした場合にだけ利用でき、そうでない場合は nil を返します。

```ruby
root = RubyVM::AbstractSyntaxTree.parse("x = 1 + 2\ny = 3\n", keep_script_lines: true)
p root.script_lines # => ["x = 1 + 2\n", "y = 3\n"]
```

- **SEE** [RubyVM::AbstractSyntaxTree::Node#source](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/source.md), [RubyVM::AbstractSyntaxTree.parse](../../../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse.md)
