# Dir#children

### def children -> [String]

ディレクトリのファイルエントリ名のうち、
"." と ".." をのぞいた配列を返します。

- **raise** `IOError` -- 既に self が close している場合に発生します。

```ruby title="例"
Dir.open('.'){|d|
  p d.children # => ["bar", "foo"]
}
```

- **SEE** [Dir.children](../../../method/Dir/s/children.md)
