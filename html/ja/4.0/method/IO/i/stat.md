# IO#stat

### def stat    -> File::Stat

ファイルのステータスを含む [File::Stat](../../../class/File=3a=3aStat.md) オブジェクトを生成して返します。

- **raise** `Errno::EXXX` -- ステータスの読み込みに失敗した場合に発生します。

- **raise** `IOError` -- 既に close されていた場合に発生します。 

```ruby title="例"
IO.write("testfile", "This is line one\nThis is line two\n")
File.open("testfile") do |f|
  s = f.stat
  p "%o" % s.mode # => "100644"
  p s.blksize     # => 4096
  p s.atime       # => 2018-03-01 23:19:59 +0900
end
```

- **SEE** [File#lstat](../../../method/File/i/lstat.md), [File.stat](../../../method/File/s/stat.md), [File.lstat](../../../method/File/s/lstat.md)
