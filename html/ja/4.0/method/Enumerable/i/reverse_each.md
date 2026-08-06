# Enumerable#reverse_each

### def reverse_each -> Enumerator
### def reverse_each {|element| ... } -> self

逆順に各要素に対してブロックを評価します。

内部で各要素を保持した配列を作ります。

ブロックを省略した場合は、各要素を逆順に辿る
[Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
{a: 1, b: 2, c: 3}.reverse_each # => #<Enumerator: ...>
{a: 1, b: 2, c: 3}.reverse_each { |v| p v }
# => [:c, 3]
#    [:b, 2]
#    [:a, 1]
```
