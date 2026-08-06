# Prism?.parse_file_comments

### module_function def parse_file_comments(filepath, **options) -> Array

`filepath` で指定したファイルを構文解析し、[Prism?.parse_comments](../../../method/Prism/m/parse_comments.md)
と同様にコメントを表すオブジェクトの配列を返します。
オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample2.rb", "# comment here\nputs 1\n")

comments = Prism.parse_file_comments("sample2.rb")
p comments.size         # => 1
p comments.first.class  # => Prism::InlineComment
```

- **SEE** [Prism?.parse_comments](../../../method/Prism/m/parse_comments.md)
