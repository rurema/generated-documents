# Dir.foreach

### def Dir.foreach(path) {|file| ...}                                        -> nil
### def Dir.foreach(path, encoding: Encoding.find("filesystem")) {|file| ...} -> nil
### def Dir.foreach(path)                                                     -> Enumerator
### def Dir.foreach(path, encoding: Encoding.find("filesystem"))              -> Enumerator

ディレクトリ path の各エントリを表す文字列を引数として、ブロックを評価します。

ブロックが与えられなかった場合、各エントリを文字列として保持する
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **param** `encoding` -- ディレクトリのエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します。省略した場合はファイルシステムのエンコーディングと同じになります。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
Dir.foreach('.'){|f|
  p f
}
# => "."
#   ".."
#   "bar"
#   "foo"
```

- **SEE** [Dir.entries](../../../method/Dir/s/entries.md)
- **SEE** [Dir.each_child](../../../method/Dir/s/each_child.md)
