# IO#puts

### def puts(*obj)    -> nil

各 obj を self に出力し、それぞれの後に改行を出力します。
引数の扱いは [Kernel?.puts](../../../method/Kernel/m/puts.md) と同じです。詳細はこちらを参照してください。

- **param** `obj` -- 出力したいオブジェクトを指定します。[Kernel?.puts](../../../method/Kernel/m/puts.md) と同じです。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。

```text
$stdout.puts("this", "is", "a", "test", [1, [nil, 3]])
     
#=>     
this
is
a
test
1
     
3
```

- **SEE** [Kernel?.puts](../../../method/Kernel/m/puts.md)
