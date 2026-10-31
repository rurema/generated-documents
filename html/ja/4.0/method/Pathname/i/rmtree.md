# Pathname#rmtree

### def rmtree(noop: nil, verbose: nil, secure: nil) -> self

`FileUtils.rm_rf(self.to_s, noop: noop, verbose: verbose, secure: secure)` と同じです。

`self` を返します。


- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **param** `secure` -- 真を指定するとファイルの削除に [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) を使用します。

- **SEE** [FileUtils?.rm_rf](../../../method/FileUtils/m/rm_rf.md)
