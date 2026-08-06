# IO#putc

### def putc(ch)    -> object

文字 ch を self に出力します。
引数の扱いは [Kernel?.putc](../../../method/Kernel/m/putc.md) と同じです。詳細はこちらを参照してください。ch を返します。

- **param** `ch` -- 出力したい文字を、文字列か文字コード(整数)で与えます。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。

```ruby title="例"
$stdout.putc "A" # => A
$stdout.putc 65  # => A
```

- **SEE** [Kernel?.putc](../../../method/Kernel/m/putc.md)
