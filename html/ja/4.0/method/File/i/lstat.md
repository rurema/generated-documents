# File#lstat

### def lstat    -> File::Stat

ファイルの状態を含む [File::Stat](../../../class/File=3a=3aStat.md) オブジェクトを生成して返します。
シンボリックリンクに関してリンクそのものの情報を返します。
[man:lstat(2)] を実装していないシステムでは、[IO#stat](../../../method/IO/i/stat.md)と同じです。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

- **raise** `IOError` -- 自身が close されている場合に発生します。

```ruby title="例"
# testlink は testfile のシンボリックリンク
File.open("testlink") do |f|
    p f.lstat == File.stat("testfile")  # => false
    p f.stat == File.stat("testfile")   # => true
end
```

- **SEE** [IO#stat](../../../method/IO/i/stat.md), [File.stat](../../../method/File/s/stat.md), [File.lstat](../../../method/File/s/lstat.md)
