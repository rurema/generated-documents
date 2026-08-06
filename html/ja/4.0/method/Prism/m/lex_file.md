# Prism?.lex_file

### module_function def lex_file(filepath, **options) -> Prism::LexResult

`filepath` で指定したファイルを字句解析します。戻り値の形式は
[Prism?.lex](../../../method/Prism/m/lex.md) と同じです。
オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "def foo(a, b) = a + b\n")

result = Prism.lex_file("sample.rb")
p result.class
# => Prism::LexResult
p result.value.map { |token, _state| token.type }
# => [:KEYWORD_DEF, :IDENTIFIER, :PARENTHESIS_LEFT, :IDENTIFIER, :COMMA,
#     :IDENTIFIER, :PARENTHESIS_RIGHT, :EQUAL, :IDENTIFIER, :PLUS,
#     :IDENTIFIER, :NEWLINE, :EOF]
```

- **SEE** [Prism?.lex](../../../method/Prism/m/lex.md)
