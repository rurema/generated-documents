# FileTest?.size?

### module_function def size?(file)    -> Integer | nil

ファイルのサイズを返します。ファイルが存在しない時やファイルのサイズが0の時には nil を返します。

- **param** `file` -- ファイル名を表す文字列か IO オブジェクトを指定します。

- **raise** `IOError` -- 指定された IO オブジェクト file が既に close されていた場合に発生します。

```ruby title="例"
IO.write("testfile", "test")
p FileTest.size?("testfile")    # => 4
File.delete("testfile")
p FileTest.size?("testfile")    # => nil
```

- **SEE** [FileTest?.size](../../../method/FileTest/m/size.md), [FileTest?.zero?](../../../method/FileTest/m/zero=3f.md)
