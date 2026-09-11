# Psych.unsafe_load_file

### def Psych.unsafe_load_file(filename) -> object

filename で指定したファイルの内容を [Psych.unsafe_load](../../../method/Psych/s/unsafe_load.md) を使って Ruby のオブジェクトに変換します。

信頼できないファイルの変換には使わないでください。信頼できないファイルには [Psych.safe_load_file](../../../method/Psych/s/safe_load_file.md) を使ってください。

ファイルが空の場合は fallback で指定した値(デフォルトは false)を返します。

- **param** `filename` -- 読み込むファイルの名前
- **raise** `Psych::SyntaxError` -- YAML ドキュメントに文法エラーが発見されたときに発生します
- **SEE** [Psych.unsafe_load](../../../method/Psych/s/unsafe_load.md), [Psych.safe_load_file](../../../method/Psych/s/safe_load_file.md), [Psych.load_file](../../../method/Psych/s/load_file.md)
