# ARGF.class#putc

### def putc(ch)  -> object
{: since="1.9.3"}

文字 ch を処理対象のファイルに出力します。
ch を返します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時にのみ使用できます。
また [m:$stdout] への代入の影響を受けません。
それ以外は [Kernel?.putc](../../../method/Kernel/m/putc.md) と同じです。

- **param** `ch` -- 出力する文字を [String](../../../class/String.md) オブジェクトで指定します。
