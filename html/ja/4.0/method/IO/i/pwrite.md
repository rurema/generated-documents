# IO#pwrite

### def pwrite(string, offset) -> Integer

string を offset の位置に [man:pwrite(2)] システムコールを使って書き込みます。

[IO#seek](../../../method/IO/i/seek.md)と[IO#write](../../../method/IO/i/write.md)の組み合わせと比べて、アトミックな操作になるという点が優れていて、複数スレッド/プロセスから同じIOオブジェクトを様々な位置から読み込むことを許します。
どのユーザー空間のIO層のバッファリングもバイパスします。

- **param** `string` -- 書き込む文字列を指定します。
- **param** `offset` -- ファイルポインタを変えずに書き込む位置を指定します。

- **return** -- 書き込んだバイト数を返します。

- **raise** `Errno::EXXX` -- シークまたは書き込みが失敗した場合に発生します。
- **raise** `NotImplementedError` -- システムコールがサポートされていない OS で発生します。

```ruby title="例"
File.open("testfile", "w") do |f|
  p f.pwrite("ABCDEF", 3) # => 6
end

p File.read("testfile")   # => "\u0000\u0000\u0000ABCDEF"
```
