# Prism?.parse_comments

### module_function def parse_comments(source, **options) -> Array

`source` を構文解析し、見つかったコメントを表すオブジェクトの配列を返します。配列の要素は `Prism::InlineComment`(`# ...` 形式のコメント)または `Prism::EmbDocComment`(`=begin`/`=end` 形式のコメント)のインスタンスです。オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

comments = Prism.parse_comments("# hello\n1 + 1")
p comments.size                  # => 1
p comments.first.class           # => Prism::InlineComment
p comments.first.location.slice  # => "# hello"
```

- **SEE** [Prism::ParseResult#comments](../../../method/Prism=3a=3aParseResult/i/comments.md)
