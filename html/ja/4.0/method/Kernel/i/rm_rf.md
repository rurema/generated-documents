# Kernel#rm_rf

### def rm_rf(*files) -> ()

[FileUtils?.rm_rf](../../../method/FileUtils/m/rm_rf.md) のラッパーメソッドです。

- **param** `files` -- ファイルのリストか、[Dir.glob](../../../method/Dir/s/glob.md)で利用できる glob パターンを指定します。
             最後の要素が [Hash](../../../class/Hash.md) の場合は [FileUtils?.rm_f](../../../method/FileUtils/m/rm_f.md) の第二引数になります。

- **SEE** [FileUtils?.rm_rf](../../../method/FileUtils/m/rm_rf.md), [Dir.glob](../../../method/Dir/s/glob.md)
