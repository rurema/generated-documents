# ARGF.class#puts

### def puts(*arg)  -> nil
{: since="1.9.3"}

引数と改行を順番に処理対象のファイルに出力します。
引数がなければ改行のみを出力します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時にのみ使用できます。
また [m:$stdout] への代入の影響を受けません。
それ以外は [Kernel?.puts](../../../method/Kernel/m/puts.md) と同じです。

- **param** `arg` -- 出力するオブジェクトを任意個指定します。
