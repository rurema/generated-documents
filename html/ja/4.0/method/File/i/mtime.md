# File#mtime

### def mtime    -> Time

最終更新時刻を Time オブジェクトとして返します。

- **raise** `IOError` -- 自身が close されている場合に発生します。

- **raise** `Errno::EXXX` -- ファイルの時刻の取得に失敗した場合に発生します。

```ruby title="例:"
IO.write("testfile", "test")
p File.open("testfile") { |f| f.mtime } # => 2017-12-21 22:58:17 +0900
```

- **SEE** [File#lstat](../../../method/File/i/lstat.md), [File#atime](../../../method/File/i/atime.md), [File#ctime](../../../method/File/i/ctime.md), [File#birthtime](../../../method/File/i/birthtime.md)
