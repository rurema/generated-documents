# ARGF.class#to_write_io

### def to_write_io  -> IO
{: since="1.9.3"}

処理対象のファイルへの書き出し用 [IO](../../../class/IO.md) オブジェクトを返します。

[ARGF#inplace](../../../class/ARGF.md#inplace)時以外は読み込み用の IO オブジェクトを返します。
このため [ARGF.class#write](../../../method/ARGF=2eclass/i/write.md) などの書き出し用メソッドを呼ぶと [IOError](../../../class/IOError.md) が発生します。
