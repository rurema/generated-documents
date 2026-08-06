# FileTest?.sticky?

### module_function def sticky?(file)    -> bool

ファイルの sticky ビット([man:chmod(2)] 参照)が立っている時に真を返します。そうでない場合、ファイルが存在しない場合、あるいはシステムコールに失敗した場合などには false を返します。

- **param** `file` -- ファイル名を表す文字列か IO オブジェクトを指定します。

```ruby title="例"
require 'fileutils'
IO.write("testfile", "")
FileUtils.chmod("o+t", "testfile")
p FileTest.sticky?("testfile")    # => true
FileUtils.chmod("o-t", "testfile")
p FileTest.sticky?("testfile")    # => false
```
