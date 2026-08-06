# Psych::SyntaxError#file

### def file -> String|nil

エラーが生じたファイルの名前を返します。

[Psych.load_file](../../../method/Psych/s/load_file.md) で指定したファイルの名前や
[Psych.load](../../../method/Psych/s/load.md) の第2引数で指定した名前が返されます。
パース時にファイル名を指定しなかった場合は nil が返されます。
