# module Prism

Ruby プログラムの構文解析・字句解析を行うためのモジュール関数を提供するモジュールです。文字列を直接解析する [Prism?.parse](../method/Prism/m/parse.md) や
[Prism?.lex](../method/Prism/m/lex.md) の他、ファイルを指定して解析する [Prism?.parse_file](../method/Prism/m/parse_file.md)
などが用意されています。

解析結果は多くの場合 [Prism::ParseResult](../class/Prism=3a=3aParseResult.md) のインスタンスとして返されます。詳細は [Prism::ParseResult](../class/Prism=3a=3aParseResult.md) を参照してください。

## Module Functions

- [dump](../method/Prism/m/dump.md)
- [dump_file](../method/Prism/m/dump_file.md)
- [lex](../method/Prism/m/lex.md)
- [lex_file](../method/Prism/m/lex_file.md)
- [parse](../method/Prism/m/parse.md)
- [parse_comments](../method/Prism/m/parse_comments.md)
- [parse_failure?](../method/Prism/m/parse_failure=3f.md)
- [parse_file](../method/Prism/m/parse_file.md)
- [parse_file_comments](../method/Prism/m/parse_file_comments.md)
- [parse_lex](../method/Prism/m/parse_lex.md)
- [parse_lex_file](../method/Prism/m/parse_lex_file.md)
- [parse_success?](../method/Prism/m/parse_success=3f.md)
