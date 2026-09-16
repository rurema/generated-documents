# Ripper#debug_output

### def debug_output -> object
{: since="2.7.0"}
### def debug_output=(obj)
{: since="2.7.0"}

構文解析のデバッグ出力先を取得・設定します。

`debug_output` は現在のデバッグ出力先を返します。初期値は標準出力です。

`debug_output=` はデバッグ出力先を obj に設定します。[Ripper#yydebug](../../../method/Ripper/i/yydebug.md) を true にした場合、構文解析器のトレース情報がここで指定したオブジェクトに書き込まれます。

- **param** `obj` -- デバッグ出力の書き込み先を指定します。`<<` を実行できるオブジェクト(IO オブジェクトなど)を指定します。

- **SEE** [Ripper#yydebug](../../../method/Ripper/i/yydebug.md), [Ripper#yydebug=](../../../method/Ripper/i/yydebug=3d.md)
