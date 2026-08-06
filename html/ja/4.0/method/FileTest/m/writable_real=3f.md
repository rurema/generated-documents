# FileTest?.writable_real?

### module_function def writable_real?(file)    -> bool

ファイルがカレントプロセスの実ユーザか実グループによって書き込み可能である時に真を返します。そうでない場合、ファイルが存在しない場合、あるいはシステムコールに失敗した場合などには false を返します。

- **param** `file` -- ファイル名を表す文字列を指定します。


- **SEE** [FileTest?.writable?](../../../method/FileTest/m/writable=3f.md)
