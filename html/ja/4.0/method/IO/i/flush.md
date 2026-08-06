# IO#flush

### def flush    -> self

IO ポートの内部バッファをフラッシュします。

このメソッドを使ったとき、即座にメタデータを更新することは保証されません(特にWindowsで)。
即座にメタデータも更新したいときは [IO#fsync](../../../method/IO/i/fsync.md) を使います。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- [man:fflush(3)] が失敗した場合に発生します。

```ruby title="例"
require "tempfile"

Tempfile.open("testtmpfile") do |f|
  f.print "test"
  p File.read(f.path) # => ""
  f.flush
  p File.read(f.path) # => "test"
end
```
