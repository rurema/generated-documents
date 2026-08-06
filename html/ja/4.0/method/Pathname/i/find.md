# Pathname#find

### def find(ignore_error: true)                  -> Enumerator
### def find(ignore_error: true) {|pathname| ...} -> nil

self 配下のすべてのファイルやディレクトリを一つずつ引数 pathname に渡してブロックを実行します。

```text
require 'find'
Find.find(self.to_s) {|f| yield Pathname.new(f)}
```

と同じです。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `ignore_error` -- 探索中に発生した例外を無視するかどうかを指定します。

- **SEE** [Find?.find](../../../method/Find/m/find.md)
