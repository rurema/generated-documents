# File.new

### def File.new(path, mode = "r", perm = 0666, **opts)                -> File

path で指定されるファイルをオープンし、[File](../../../class/File.md) オブジェクトを生成して返します。

path が整数の場合はファイルディスクリプタとして扱い、それに対応する
[File](../../../class/File.md) オブジェクトを生成して返します。[IO.new](../../../method/IO/s/new.md) と同じです。

- **param** `path` -- ファイルを文字列で指定します。整数を指定した場合はファイルディスクリプタとして扱います。

- **param** `mode` -- モードを文字列か定数の論理和で指定します。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです。

- **param** `perm` -- ファイルを生成する場合のファイルのパーミッションを整数で指定します。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです。

- **param** `opts` -- キーワード引数でオープン時のオプションを指定します。指定できるオプションは [IO.new](../../../method/IO/s/new.md) を参照してください。

- **raise** `Errno::EXXX` -- ファイルのオープンに失敗した場合に発生します。

```ruby title="例: 読み込みモードでのファイルオープン"
f = File.new("testfile", "r")
p f.class # => File
f.close
```

- **SEE** [File.open](../../../method/File/s/open.md)
