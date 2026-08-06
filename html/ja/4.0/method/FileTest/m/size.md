# FileTest?.size

### module_function def size(file)    -> Integer

ファイルのサイズを返します。

- **param** `file` -- ファイル名を表す文字列か IO オブジェクトを指定します。

- **raise** `Errno::EXXX` -- file が存在しない場合、あるいはシステムコールに失敗した場合に発生します。

- **raise** `IOError` -- 指定された IO オブジェクト file が既に close されていた場合に発生します。

- **SEE** [FileTest?.size?](../../../method/FileTest/m/size=3f.md), [FileTest?.zero?](../../../method/FileTest/m/zero=3f.md)

```ruby title="例"
p FileTest.size('/etc/passwd') # => 5925
```
