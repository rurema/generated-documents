# FileTest?.symlink?

### module_function def symlink?(file)    -> bool

ファイルがシンボリックリンクである時に真を返します。そうでない場合、ファイルが存在しない場合、あるいはシステムコールに失敗した場合などには false を返します。

- **param** `file` -- ファイル名を表す文字列を指定します。

```ruby title="例"
IO.write("testfile", "test")
p FileTest.symlink?("testfile")    # => false
File.symlink("testfile", "testlink")
p FileTest.symlink?("testlink")    # => true
```
