# Psych.load_file

### def Psych.load_file(filename) -> object

`filename` で指定したファイルを YAML ドキュメントとして
Ruby のオブジェクトに変換します。

[Psych.load](../../../method/Psych/s/load.md) と同様に、デフォルトでは限られたクラスのオブジェクトにしか変換しません。`permitted_classes` などのオプションは [Psych.load](../../../method/Psych/s/load.md) と同じものが指定できます。

- **param** `filename` -- ファイル名
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
