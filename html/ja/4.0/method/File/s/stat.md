# File.stat

### def File.stat(filename)    -> File::Stat

filename の情報を含む [File::Stat](../../../class/File=3a=3aStat.md) オブジェクトを生成して返します。

- **param** `filename` -- ファイル名を表す文字列を指定します。 

- **raise** `Errno::EXXX` -- 情報の取得に失敗した場合に発生します。

```ruby title="例"
p File.stat("testfile").class # => File::Stat
p File.stat("testfile").mtime # => 2017-12-10 01:13:56 +0900
```

- **SEE** [IO#stat](../../../method/IO/i/stat.md), [File#lstat](../../../method/File/i/lstat.md)
