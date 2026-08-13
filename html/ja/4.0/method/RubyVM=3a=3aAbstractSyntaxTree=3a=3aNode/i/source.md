# RubyVM::AbstractSyntaxTree::Node#source

### def source -> String | nil

self に対応する部分のソースコードを文字列で返します。

keep_script_lines を有効にしてパースした場合にだけ利用でき、そうでない場合は nil を返します。

```ruby
root = RubyVM::AbstractSyntaxTree.parse("x = 1 + 2\ny = 3\n", keep_script_lines: true)
p root.source                         # => "x = 1 + 2\ny = 3"
p root.children[2].children[0].source # => "x = 1 + 2"
```

- **SEE** [RubyVM::AbstractSyntaxTree::Node#script_lines](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/script_lines.md)
