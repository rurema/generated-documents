# Enumerable#collect_concat

### def flat_map       -> Enumerator
### def collect_concat -> Enumerator
### def flat_map       {| obj | block }  -> Array
### def collect_concat {| obj | block }  -> Array

各要素をブロックに渡し、その返り値を連結した配列を返します。

ブロックの返り値は基本的に配列を返すべきです。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
p [[1,2], [3,4]].flat_map{|i| i.map{|j| j*2}} # => [2,4,6,8]
```
