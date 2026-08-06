# ARGF.class#print

### def print(*arg)  -> nil
{: since="1.9.3"}

引数を順に処理対象のファイルに出力します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時にのみ使用できます。
また [m:$stdout] への代入の影響を受けません。
それ以外は [Kernel?.print](../../../method/Kernel/m/print.md) と同じです。

- **param** `arg` -- 出力するオブジェクトを任意個指定します。
