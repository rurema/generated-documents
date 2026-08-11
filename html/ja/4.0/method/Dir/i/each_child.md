# Dir#each_child

### def each_child {|item| ... }    -> self
### def each_child                  -> Enumerator

ディレクトリの "." と ".." をのぞく各エントリを表す文字列を引数として、ブロックを評価します。

ブロックが与えられなかった場合、各エントリを文字列として保持する
[Enumerator](../../../class/Enumerator.md)
オブジェクトを返します。

- **raise** `IOError` -- 既に self が close している場合に発生します。

```ruby title="例"
Dir.open('.').each_child{|f|
  p f
}
# => "bar"
#   "foo"
```

- **SEE** [Dir#each](../../../method/Dir/i/each.md)
- **SEE** [Dir.each_child](../../../method/Dir/s/each_child.md)
