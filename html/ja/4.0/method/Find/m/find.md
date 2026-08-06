# Find?.find

### module_function def find(*dirs, ignore_error: true)              -> Enumerator
### module_function def find(*dirs, ignore_error: true){|file| ... } -> nil

[man:find(1)] のように dir 配下のすべてのファイルやディレクトリを一つずつ引数 file に渡してブロックを実行します。

ディレクトリのシンボリックリンクは辿りません。
また file に渡される順序は不定です。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `dirs` -- 探索するディレクトリを一つ以上指定します。

- **param** `ignore_error` -- 探索中に発生した例外を無視するかどうかを指定します。

例:

```ruby
require 'find'
  
Find.find('/tmp') {|f|
  Find.prune if f == "/tmp/bar"
  # ...
}
```

あるディレクトリ配下の探索を省略したい場合は上記のように、
[Find?.prune](../../../method/Find/m/prune.md) を使用します。この例では "/tmp/bar"
配下のファイルやディレクトリを探索しません。prune の代わりに
[spec/control#next](../../../doc/spec=2fcontrol.md#next) を使用した場合、"/tmp/bar" 自体をスキップするだけで、その配下の探索は続行されます。

- **SEE** [man:find(1)], [Find?.prune](../../../method/Find/m/prune.md)
