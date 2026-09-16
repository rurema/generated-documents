# FileUtils?.link_entry

### module_function def link_entry(src, dest, dereference_root = false, remove_destination = false) -> ()
{: since="2.6.0"}

ファイルシステムのエントリ src を dest にハードリンクします。src がディレクトリの場合はその中身を再帰的にリンクします。

- **param** `src` -- リンク元。存在している必要があります。

- **param** `dest` -- リンク先。存在していてはいけません。

- **param** `dereference_root` -- 真のときは src についてだけシンボリックリンクの指す内容をリンクします。

- **param** `remove_destination` -- 真のときはコピーする前に dest のファイルを削除します。

```ruby
require 'fileutils'
FileUtils.link_entry('src', 'dest')
```

- **SEE** [FileUtils?.copy_entry](../../../method/FileUtils/m/copy_entry.md)
