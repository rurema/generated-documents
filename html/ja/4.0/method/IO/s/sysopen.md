# IO.sysopen

### def IO.sysopen(path, mode = "r", perm = 0666)     -> Integer

path で指定されるファイルをオープンし、ファイル記述子を返します。

[IO.for_fd](../../../method/IO/s/for_fd.md) などで IO オブジェクトにしない限り、このメソッドでオープンしたファイルをクローズする手段はありません。

- **param** `path` -- ファイル名を表す文字列を指定します。

- **param** `mode` -- モードを文字列か定数の論理和で指定します。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです。

- **param** `perm` -- [man:open(2)] の第 3 引数のように、ファイルを生成する場合の
            ファイルのパーミッションを整数で指定します。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです。

- **raise** `Errno::EXXX` -- ファイルのオープンに失敗した場合に発生します。

```ruby title="例"
p IO.sysopen("testfile", "w+") # => 3
```

- **SEE** [Kernel?.open](../../../method/Kernel/m/open.md)
