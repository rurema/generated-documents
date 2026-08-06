# Pathname#rename

### def rename(to) -> 0

File.rename(self.to_s, to) と同じです。

- **param** `to` -- ファイル名を表す文字列を指定します。


このメソッドはファイルシステム上のファイル名を変更しますが、レシーバの
[Pathname](../../../class/Pathname.md) オブジェクトが保持しているパス文字列は変更されません。
そのため、rename の呼び出し後も self は変更前のパスを指したままです。

```ruby
require 'pathname'
path = Pathname.new("old")
File.write("old", "")
path.rename("new")
path.to_s    # => "old"
path.exist?  # => false
p Pathname.new("new").exist? # => true
```

新しいパスを指す [Pathname](../../../class/Pathname.md) オブジェクトが必要な場合は、
Pathname.new(to) などとして新しく作成する必要があります。

- **SEE** [File.rename](../../../method/File/s/rename.md)
