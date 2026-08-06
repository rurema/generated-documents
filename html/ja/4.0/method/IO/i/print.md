# IO#print

### def print(*arg)    -> nil

引数を IO ポートに順に出力します。引数を省略した場合は、[m:$_] を出力します。

- **param** `arg` -- [Kernel?.print](../../../method/Kernel/m/print.md) と同じです。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。

```ruby title="例"
$stdout.print("This is ", 100, " percent.\n") # => This is 100 percent.
```

- **SEE** [Kernel?.print](../../../method/Kernel/m/print.md)
