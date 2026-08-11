# FileUtils?.install

### module_function def install(src, dest, mode: nil, owner: nil, group: nil, preserve: nil, noop: nil, verbose: nil) -> ()

src と dest の内容が違うときだけ src を dest にコピーします。

- **param** `src` -- コピー元。一つの場合は文字列でも指定可能です。
           二つ以上指定する場合は配列で指定します。

- **param** `dest` -- コピー先のファイルかディレクトリです。

- **param** `mode` -- パーミッションを8進数(absolute mode)か文字列(symbolic
            mode)で指定します。symbolic mode の詳細は [FileUtils?.chmod](../../../method/FileUtils/m/chmod.md) を参照してください。

- **param** `owner` -- ユーザー名か uid を指定すると所有ユーザを変更します。

- **param** `group` -- グループ名か gid を指定すると所有グループを変更します。

- **param** `preserve` -- 真を指定すると更新時刻と、可能なら所有ユーザ・所有グループもコピーします。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

```ruby
require 'fileutils'
FileUtils.install('ruby', '/usr/local/bin/ruby', mode: 0755, verbose: true)
FileUtils.install('lib.rb', '/usr/local/lib/ruby/site_ruby', verbose: true)
```
