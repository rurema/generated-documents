# FileUtils?.chown_R

### module_function def chown_R(user, group, list, noop: nil, verbose: nil, force: nil) -> Array

list 以下のファイルの所有ユーザと所有グループを
user と group へ再帰的に変更します。

user, group に nil または -1 を渡すとその項目は変更しません。

- **param** `user` -- ユーザー名か uid を指定します。nil/-1 を指定すると変更しません。

- **param** `group` -- グループ名か gid を指定します。nil/-1 を指定すると変更しません。

- **param** `list` -- ファイルのリストを指定します。対象のファイルが一つの場合は文字列でも指定可能です。
           二つ以上指定する場合は配列で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **param** `force` -- 真を指定すると処理中に発生した [StandardError](../../../class/StandardError.md) を無視します。

- **return** -- list を配列として返します。

```ruby
require 'fileutils'
FileUtils.chown 'root', 'staff', '/usr/local/bin/ruby'
FileUtils.chown nil, 'bin', Dir.glob('/usr/bin/*'), verbose: true

require 'fileutils'
FileUtils.chown_R 'www', 'www', '/var/www/htdocs'
FileUtils.chown_R 'cvs', 'cvs', '/var/cvs', verbose: true
```
