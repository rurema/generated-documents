# File#birthtime

### def birthtime -> Time

作成された時刻を Time オブジェクトとして返します。

- **raise** `IOError` -- 自身が close されている場合に発生します。

- **raise** `Errno::EXXX` -- ファイルの時刻の取得に失敗した場合に発生します。

- **raise** `NotImplementedError` --  Windows のような birthtime のない環境で発生します。

```ruby
p File.new("testfile").birthtime #=> Wed Apr 09 08:53:14 CDT 2003
```

- **SEE** [File#lstat](../../../method/File/i/lstat.md), [File#atime](../../../method/File/i/atime.md), [File#ctime](../../../method/File/i/ctime.md), [File#mtime](../../../method/File/i/mtime.md)
