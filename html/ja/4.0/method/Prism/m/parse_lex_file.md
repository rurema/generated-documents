# Prism?.parse_lex_file

### module_function def parse_lex_file(filepath, **options) -> Prism::ParseLexResult

`filepath` で指定したファイルに対して構文解析と字句解析の両方を行います。戻り値の形式は [Prism?.parse_lex](../../../method/Prism/m/parse_lex.md) と同じです。
オプションは [Prism?.parse](../../../method/Prism/m/parse.md) と同じです。

- **param** `filepath` -- 解析する Ruby プログラムのファイルパスを指定します。

- **param** `options` -- [Prism?.parse](../../../method/Prism/m/parse.md) を参照してください。

```ruby title="例"
require "prism"

File.write("sample.rb", "1 + 2\n")

ast, tokens = Prism.parse_lex_file("sample.rb").value
p ast.class # => Prism::ProgramNode
p tokens.map { |token, _state| token.type }
# => [:INTEGER, :PLUS, :INTEGER, :NEWLINE, :EOF]
```

- **SEE** [Prism?.parse_lex](../../../method/Prism/m/parse_lex.md)
