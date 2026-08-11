# Dir.entries

### def Dir.entries(path)                                        -> [String]
### def Dir.entries(path, encoding: Encoding.find("filesystem")) -> [String]

ディレクトリ path に含まれるファイルエントリ名の配列を返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **param** `encoding` -- ディレクトリのエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します。省略した場合はファイルシステムのエンコーディングと同じになります。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
p Dir.entries('.') # => [".", "..", "bar", "foo"]
```

- **SEE** [Dir.foreach](../../../method/Dir/s/foreach.md)
- **SEE** [Dir.children](../../../method/Dir/s/children.md)
