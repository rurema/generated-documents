# Psych::Parser#parse

### def parse(yaml) -> self
### def parse(yaml, path) -> self

YAML ドキュメントをパースし、イベントハンドラにイベントを逐次通知します。

`path` はパース中に発生した例外 [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) のメッセージと [Psych::SyntaxError#file](../../../method/Psych=3a=3aSyntaxError/i/file.md) に用います。
省略した場合は、`yaml` が `path` メソッドを持つ([File](../../../class/File.md) オブジェクトなど)ときはその値を、そうでなければ `"<unknown>"` を用います。

- **param** `yaml` -- YAML ドキュメント(文字列 or [IO](../../../class/IO.md) オブジェクト)
- **param** `path` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
- **SEE** [Psych::Parser.new](../../../method/Psych=3a=3aParser/s/new.md), [Psych::Handler](../../../class/Psych=3a=3aHandler.md), [Psych::Parser#handler](../../../method/Psych=3a=3aParser/i/handler.md)
