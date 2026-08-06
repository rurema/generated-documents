# File.link

### def File.link(old, new)    -> 0

old を指す new という名前のハードリンクを生成します。old はすでに存在している必要があります。
ハードリンクに成功した場合は 0 を返します。

失敗した場合は例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `old` -- ファイル名を表す文字列を指定します。 

- **param** `new` -- ファイル名を表す文字列を指定します。 

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
IO.write("testfile", "test")
p File.link("testfile", "testlink") # => 0
p IO.read("testlink")               # => "test"
```
