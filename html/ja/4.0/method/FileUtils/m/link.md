# FileUtils?.link

### module_function def ln(src, dest, force: nil, noop: nil, verbose: nil)   -> ()
### module_function def link(src, dest, force: nil, noop: nil, verbose: nil) -> ()

src へのハードリンク dest を作成します。

src が一つの場合、
dest がすでに存在しディレクトリであるときは dest/src を作成します。
dest がすでに存在しディレクトリでないならば例外 Errno::EEXIST が発生します。
ただし :force オプションを指定したときは dest を上書きします。

src が複数の場合、
src[0] へのハードリンク dest/src[0]、src[1] へのハードリンク dest/src[1] …を作成します。
dest がディレクトリでない場合は例外 Errno::ENOTDIR が発生します。

- **param** `src` -- リンク元。一つの場合は文字列でも指定可能です。
           二つ以上指定する場合は配列で指定します。

- **param** `dest` -- リンク作成先のファイルかディレクトリです。

- **param** `force` -- 真を指定すると dest を上書きします。

- **param** `noop` -- 真を指定すると実際の処理は行いません。

- **param** `verbose` -- 真を指定すると詳細を出力します。

- **raise** `Errno::EEXIST` -- src が一つで dest がすでに存在しディレクトリでない場合に発生します。
- **raise** `Errno::ENOTDIR` -- src が複数で dest がディレクトリでない場合に発生します。

```ruby
require 'fileutils'
FileUtils.ln('gcc', 'cc', verbose: true)
FileUtils.ln('/usr/bin/emacs21', '/usr/bin/emacs')
FileUtils.cd('/bin')
FileUtils.ln(%w(cp mv mkdir), '/usr/bin')
```
