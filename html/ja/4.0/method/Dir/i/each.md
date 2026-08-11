# Dir#each

### def each {|item| ... }    -> self
### def each                  -> Enumerator

ディレクトリの各エントリを表す文字列を引数として、ブロックを評価します。

ブロックが与えられなかった場合、各エントリを文字列として保持する
[Enumerator](../../../class/Enumerator.md)
オブジェクトを返します。

- **raise** `IOError` -- 既に自身が close している場合に発生します。

```ruby title="例"
Dir.open('.').each{|f|
  p f
}
# => "."
#   ".."
#   "bar"
#   "foo"
```

- **SEE** [Dir#each_child](../../../method/Dir/i/each_child.md)
