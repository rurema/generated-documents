# Dir.children

### def Dir.children(path)                -> [String]
### def Dir.children(path, encoding: enc) -> [String]

ディレクトリ path に含まれるファイルエントリ名のうち、
"." と ".." をのぞいた配列を返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **param** `encoding` -- ディレクトリのエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します。省略した場合は
                ファイルシステムのエンコーディングと同じになります。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
p Dir.children('.') #=> ["bar", "foo"]
```

- **SEE** [Dir#children](../../../method/Dir/i/children.md)
- **SEE** [Dir.each_child](../../../method/Dir/s/each_child.md)
- **SEE** [Dir.entries](../../../method/Dir/s/entries.md)
