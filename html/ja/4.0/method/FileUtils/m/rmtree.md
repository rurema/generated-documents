# FileUtils?.rmtree

### module_function def rm_rf(list, noop: nil, verbose: nil, secure: nil)  -> ()
### module_function def rmtree(list, noop: nil, verbose: nil, secure: nil) -> ()

ファイルまたはディレクトリ list を再帰的に消去します。

rm_r(list, force: true) と同じです。

- **param** `list` -- 削除する対象。一つの場合は文字列も指定可能です。
            二つ以上指定する場合は配列で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **param** `secure` -- 真を指定するとファイルの削除に [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) を使用します。

### 注意

このメソッドにはローカル脆弱性が存在します。
この脆弱性を回避するには :secure オプションを使用してください。
詳しくは [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) の項を参照してください。

- **SEE** [FileUtils?.rm](../../../method/FileUtils/m/rm.md), [FileUtils?.rm_r](../../../method/FileUtils/m/rm_r.md), [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md)
