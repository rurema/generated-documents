# FileUtils?.mkdir_p

### module_function def mkdir_p(list, mode: nil, noop: nil, verbose: nil)  -> Array
### module_function def mkpath(list, mode: nil, noop: nil, verbose: nil)   -> Array
### module_function def makedirs(list, mode: nil, noop: nil, verbose: nil) -> Array

ディレクトリ dir とその親ディレクトリを全て作成します。

例えば、

```ruby
require 'fileutils'
FileUtils.mkdir_p('/usr/local/bin/ruby')
```

は以下の全ディレクトリを (なければ) 作成します。

  - /usr
  - /usr/local
  - /usr/local/bin
  - /usr/local/bin/ruby

- **param** `list` -- 作成するディレクトリ。一つの場合は文字列でも指定できます。
            二つ以上指定する場合は配列で指定します。

- **param** `mode` -- パーミッションを8進数で指定します。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **return** -- ディレクトリ名文字列の配列を返します。
