# FileUtils?.rmdir

### module_function def rmdir(dir, parents: nil, noop: nil, verbose: nil) -> ()

ディレクトリ dir を削除します。

ディレクトリにファイルが残っていた場合は削除に失敗します。

- **param** `dir` -- 削除するディレクトリを指定します。一つの場合は文字列でも指定可能です。
           二つ以上指定する場合は配列で指定します。

- **param** `parents` -- 真を指定すると指定したディレクトリの親ディレクトリも含めて削除します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

```ruby
require 'fileutils'
FileUtils.rmdir('somedir')
FileUtils.rmdir(%w(somedir anydir otherdir))
# 実際にはディレクトリの削除は行わずにメッセージ出力のみ
FileUtils.rmdir('somedir', verbose: true, noop: true)
```
