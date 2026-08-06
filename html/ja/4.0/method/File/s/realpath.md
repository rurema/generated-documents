# File.realpath

### def File.realpath(pathname, basedir = nil) -> String

与えられた pathname に対応する絶対パスを返します。

pathname の全てのコンポーネントは存在しなければなりません。

- **param** `pathname` -- ファイル名を指定します。

- **param** `basedir` -- ベースディレクトリを指定します。省略するとカレントディレクトリを使用します。

- **raise** `Errno::ENOENT` -- ファイルが存在しない場合に発生します。

```ruby title="例"
p ENV["HOME"]                   # => "/home/matz"
File.symlink("testfile", "testlink")
p File.realpath("testfile")     # => "/home/matz/testfile"
p File.realpath("testlink")     # => "/home/matz/testfile"
p File.realpath("..", "/tmp")   # => "/"
```
