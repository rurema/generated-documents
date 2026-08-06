# FileTest?.executable?

### module_function def executable?(file)    -> bool

ファイルがカレントプロセスにより実行できる時に真を返します。そうでない場合、ファイルが存在しない場合、あるいはシステムコールに失敗した場合などには false を返します。

- **param** `file` -- ファイル名を表す文字列を指定します。

```ruby title="例"
p FileTest.executable?('/bin') # => true
p FileTest.executable?('/bin/bash') # => true
```
