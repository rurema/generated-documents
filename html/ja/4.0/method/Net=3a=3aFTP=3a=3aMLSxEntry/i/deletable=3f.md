# Net::FTP::MLSxEntry#deletable?

### def deletable? -> bool

エントリが削除可能であれば true を返します。

ディレクトリであれば [Net::FTP#rmdir](../../../method/Net=3a=3aFTP/i/rmdir.md) が、ファイルであれば [Net::FTP#delete](../../../method/Net=3a=3aFTP/i/delete.md) が、それぞれ適用可能であるかどうかを意味します。
