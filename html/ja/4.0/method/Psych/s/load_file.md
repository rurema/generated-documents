# Psych.load_file

### def Psych.load_file(filename) -> object

filename で指定したファイルを YAML ドキュメントとして
Ruby のオブジェクトに変換します。

- **param** `filename` -- ファイル名
- **raise** `Psych::SyntaxError` -- YAMLドキュメントに文法エラーが発見されたときに発生します
