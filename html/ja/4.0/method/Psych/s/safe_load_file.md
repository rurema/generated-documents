# Psych.safe_load_file

### def Psych.safe_load_file(filename) -> object

filename で指定したファイルの内容を安全に YAML ドキュメントとして読み込み、Ruby のオブジェクトに変換します。

オプションは [Psych.safe_load](../../../method/Psych/s/safe_load.md) と同じものが指定できます。ファイルが空の場合は fallback オプションで指定した値(デフォルトは nil)を返します。

- **param** `filename` -- 読み込むファイルの名前
- **raise** `Psych::SyntaxError` -- YAML ドキュメントに文法エラーが発見されたときに発生します
- **SEE** [Psych.safe_load](../../../method/Psych/s/safe_load.md), [Psych.load_file](../../../method/Psych/s/load_file.md)
