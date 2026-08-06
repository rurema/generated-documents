# IO#each_byte

### def each_byte {|ch| ... }    -> self
### def each_byte                -> Enumerator

IO の現在位置から 1 バイトずつ読み込み、それを整数として与え、ブロックを実行します。

ブロックが与えられなかった場合は、自身から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

バイナリ読み込みメソッドとして動作します。

- **raise** `IOError` -- 自身が読み込み用にオープンされていなければ発生します。

```ruby title="例"
IO.write("testfile", "aあ")
File.open("testfile") do |io|
  io.each_byte { |x| p x }
  # => 97
  # 227
  # 129
  # 130
end
```
