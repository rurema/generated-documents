# FileUtils#ruby

### def ruby(*args){|result, status| ... }

与えられた引数で Ruby インタプリタを実行します。

- **param** `args` -- Ruby インタプリタに与える引数を指定します。

```ruby title="例"
ruby %{-pe '$_.upcase!' <README}
```

- **SEE** [FileUtils#sh](../../../method/FileUtils/i/sh.md)
