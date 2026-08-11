# ARGF.class#readline

### def readline(rs = $/)   -> String
{: since=""}
### def readline(limit)     -> String
{: since=""}
### def readline(rs, limit) -> String
{: since=""}

ARGFの現在位置から一行ずつ文字列として読み込みます。EOF に到達した時には [EOFError](../../../class/EOFError.md) を発生します。

- **param** `rs` -- 行の区切りを文字列で指定します。rs に nil を指定すると行区切りなしとみなします。空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **param** `limit` -- 最大の読み込みバイト数

- **raise** `EOFError` -- EOFに達したら発生する

- **SEE** [Kernel?.readline](../../../method/Kernel/m/readline.md), [ARGF.class#gets](../../../method/ARGF=2eclass/i/gets.md)
