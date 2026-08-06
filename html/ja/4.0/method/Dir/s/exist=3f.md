# Dir.exist?

### def Dir.exist?(file_name)    -> bool

file_name で与えられたディレクトリが存在する場合に真を返します。
そうでない場合は、偽を返します。

- **param** `file_name` -- 存在を確認したいディレクトリ名。

```ruby title="例"
p Dir.exist?(".")    # => true
p File.directory?(".") # => true
```

- **SEE** [File.directory?](../../../method/File/s/directory=3f.md)
