# Array#rfind

### def rfind(if_none_proc = nil) {|item| ... } -> object | nil
### def rfind(if_none_proc = nil)               -> Enumerator

各要素を逆順にブロックに渡して評価し、ブロックが真を返した最初の要素を返します。
すなわち、ブロックが真を返す要素のうち最後のものを返します。

ブロックが真を返す要素がなかった場合、if_none_proc を指定していればそれを呼び出した結果を返します。指定していなければ nil を返します。

ブロックが与えられなかった場合は、自身と rfind から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

[Enumerable#find](../../../method/Enumerable/i/find.md) と対になるメソッドで、`reverse_each.find` より効率的に同じ結果を得られます。

- **param** `if_none_proc` -- ブロックが真を返す要素がなかった場合に呼び出される、
                     call メソッドを持つオブジェクト([Proc](../../../class/Proc.md) など)を指定します。

```ruby title="例"
a = [1, 2, 3, 4, 5, 6]

p a.rfind {|item| item < 5 }   # => 4
p a.find {|item| item < 5 }    # => 1  (先頭から探す)

p a.rfind {|item| item > 100 } # => nil

# 見つからないときに if_none_proc の結果を返す
p [1, 2, 3, 4].rfind(proc { 0 }) {|item| item < -2 } # => 0

p a.rfind                      # => #<Enumerator: [1, 2, 3, 4, 5, 6]:rfind>
```

- **SEE** [Enumerable#find](../../../method/Enumerable/i/find.md), [Array#reverse_each](../../../method/Array/i/reverse_each.md), [Array#rindex](../../../method/Array/i/rindex.md)
