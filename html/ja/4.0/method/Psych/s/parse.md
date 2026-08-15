# Psych.parse

### def Psych.parse(yaml, filename = nil) -> Psych::Nodes::Document

YAML ドキュメントをパースし、YAML の AST を返します。

入力に複数のドキュメントが含まれている場合は、先頭のものを AST に変換して返します。

filename はパース中に発生した例外のメッセージに用います。

AST については [Psych::Nodes](../../../class/Psych=3a=3aNodes.md) を参照してください。

- **param** `yaml` -- YAML ドキュメント(文字列 or IO オブジェクト)
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列。
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
- **SEE** [Psych.load](../../../method/Psych/s/load.md)

```ruby title="例"
require 'psych'

p Psych.parse("---\n - a\n - b") # => #<Psych::Nodes::Document:...>

begin
  Psych.parse("--- `", "file.txt")
rescue Psych::SyntaxError => ex
  p ex.file    # => 'file.txt'
  p ex.message # => "(file.txt): found character that cannot start any token while scanning for the next token at line 1 column 5"
end
```
