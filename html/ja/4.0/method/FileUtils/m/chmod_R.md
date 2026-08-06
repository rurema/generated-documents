# FileUtils?.chmod_R

### module_function def chmod_R(mode, list, noop: nil, verbose: nil, force: nil) -> Array

ファイル list のパーミッションを再帰的に mode へ変更します。

- **param** `mode` -- パーミッションを8進数(absolute mode)か文字列(symbolic
            mode)で指定します([FileUtils?.chmod](../../../method/FileUtils/m/chmod.md) 参照)。

- **param** `list` -- ファイルのリストを指定します。対象のファイルが一つの場合は文字列でも指定可能です。
           二つ以上指定する場合は配列で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **param** `force` -- 真を指定すると処理中に発生した [StandardError](../../../class/StandardError.md) を無視します。

- **return** -- list を配列として返します。

```ruby
require 'fileutils'
FileUtils.chmod_R(0700, '/tmp/removing')
```
