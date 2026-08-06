# FileUtils?.uptodate?

### module_function def uptodate?(newer, older_list) -> bool

newer が、older_list に含まれるすべてのファイルより新しいとき真。
存在しないファイルは無限に古いとみなされます。

- **param** `newer` -- ファイルを一つ指定します。

- **param** `older_list` -- ファイル名の配列を指定します。

```ruby
require 'fileutils'
FileUtils.uptodate?('hello.o', ['hello.c', 'hello.h']) or system('make')
```
