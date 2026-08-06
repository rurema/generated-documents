# FileUtils?.remove_entry

### module_function def remove_entry(path, force = false) -> ()

ファイル path を削除します。path がディレクトリなら再帰的に削除します。

このメソッドにはローカル脆弱性が存在します。
詳しくは [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md) の項を参照してください。

- **param** `path` -- 削除するパス。

- **param** `force` -- 真のときは削除中に発生した [StandardError](../../../class/StandardError.md) を無視します。

```ruby
require 'fileutils'
FileUtils.remove_entry '/tmp/ruby.tmp.08883'
```

- **SEE** [FileUtils?.remove_entry_secure](../../../method/FileUtils/m/remove_entry_secure.md)
