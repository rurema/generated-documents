# FileUtils?.mkdir

### module_function def mkdir(dir, mode: nil, noop: nil, verbose: nil) -> ()

ディレクトリ dir を作成します。

- **param** `dir` -- 作成するディレクトリ。

- **param** `mode` -- パーミッションを8進数で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

```ruby
require 'fileutils'
FileUtils.mkdir('test')
FileUtils.mkdir(%w( tmp data ))
FileUtils.mkdir('notexist', noop: true)  # does not create really
```
