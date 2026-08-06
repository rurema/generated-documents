# Dir.each_child

### def Dir.each_child(path) {|file| ...}                -> nil
### def Dir.each_child(path, encoding: enc) {|file| ...} -> nil
### def Dir.each_child(path)                             -> Enumerator
### def Dir.each_child(path, encoding: enc)              -> Enumerator

ディレクトリ path の "." と ".." をのぞく各エントリを表す文字列を引数として、ブロックを評価します。

ブロックが与えられなかった場合、各エントリを文字列として保持する
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **param** `encoding` -- ディレクトリのエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します。省略した場合は
                ファイルシステムのエンコーディングと同じになります。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
Dir.each_child('.'){|f|
  p f
}
#=> "bar"
#   "foo"
```

- **SEE** [Dir.foreach](../../../method/Dir/s/foreach.md)
- **SEE** [Dir.children](../../../method/Dir/s/children.md)
- **SEE** [Dir#each_child](../../../method/Dir/i/each_child.md)
