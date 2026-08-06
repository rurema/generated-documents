# ARGF.class#printf

### def printf(format, *arg)  -> nil
{: since="1.9.3"}

C 言語の printf と同じように、format に従い引数を文字列に変換して処理対象のファイルに出力します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時にのみ使用できます。
また [m:$stdout] への代入の影響を受けません。
それ以外は出力先を指定しない形式の [Kernel?.printf](../../../method/Kernel/m/printf.md) と同じです。

- **param** `format` -- フォーマット文字列です。
- **param** `arg` -- フォーマットされる引数です。
