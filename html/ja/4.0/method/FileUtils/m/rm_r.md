# FileUtils?.rm_r

### module_function def rm_r(list, force: nil, noop: nil, verbose: nil, secure: nil) -> ()

ファイルまたはディレクトリ list を再帰的に消去します。

- **param** `list` -- 削除する対象。一つの場合は文字列も指定可能です。
            二つ以上指定する場合は配列で指定します。

- **param** `force` -- 真を指定すると処理中に発生した [StandardError](../../../class/StandardError.md) を無視します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **param** `secure` -- 真を指定するとファイルの削除に [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) を使用します。

### 注意

このメソッドにはローカル脆弱性が存在します。
この脆弱性を回避するには :secure オプションを使用してください。
詳しくは [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) の項を参照してください。

```ruby
require 'fileutils'
FileUtils.rm_r(Dir.glob('/tmp/*'))
FileUtils.rm_r(Dir.glob('/tmp/*'), secure: true)
```

- **SEE** [FileUtils?.rm](../../../method/FileUtils/m/rm.md), [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md)
