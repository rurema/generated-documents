# ARGF.class#write

### def write(str)  -> Integer
{: since="1.9.3"}

処理対象のファイルに対して str を出力します。
str が文字列でなければ to_s による文字列化を試みます。
実際に出力できたバイト数を返します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時にのみ使用できます。

- **param** `str` -- 出力する文字列を指定します。

- **SEE** [ARGF.class#to_write_io](../../../method/ARGF=2eclass/i/to_write_io.md)
