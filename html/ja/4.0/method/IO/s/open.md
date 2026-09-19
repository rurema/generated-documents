# IO.open

### def IO.open(fd, mode = "r", **opts)               -> IO
### def IO.open(fd, mode = "r", **opts) {|io| ... }   -> object

オープン済みのファイルディスクリプタ fd に対する新しい
IO オブジェクトを生成して返します。

ブロックが与えられた場合、IO オブジェクトを生成しそれを引数としてブロックを実行します。ブロックの終了とともに fd はクローズされます。ブロックの結果を返します。

- **param** `fd` -- ファイルディスクリプタである整数を指定します。

- **param** `mode` -- [IO.new](../../../method/IO/s/new.md) の mode と同じです。

- **param** `opts` -- キーワード引数。指定できるオプションは [IO.new](../../../method/IO/s/new.md) を参照してください。

- **raise** `Errno::EXXX` -- IO オブジェクトの生成に失敗した場合に発生します。

```ruby title="例"
p IO.open(IO.sysopen("testfile")) { |io| p io.class } # => IO
```

- **SEE** [IO.new](../../../method/IO/s/new.md)
