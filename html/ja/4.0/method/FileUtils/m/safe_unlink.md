# FileUtils?.safe_unlink

### module_function def rm_f(list, noop: nil, verbose: nil)        -> ()
### module_function def safe_unlink(list, noop: nil, verbose: nil) -> ()

FileUtils.rm(list, force: true) と同じです。

- **param** `list` -- 削除する対象。一つの場合は文字列も指定可能です。
            二つ以上指定する場合は配列で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **SEE** [FileUtils?.rm](../../../method/FileUtils/m/rm.md)
