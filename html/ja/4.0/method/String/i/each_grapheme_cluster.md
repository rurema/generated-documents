# String#each_grapheme_cluster

### def each_grapheme_cluster {|grapheme_cluster| block } -> self
### def each_grapheme_cluster -> Enumerator

文字列の書記素クラスタに対して繰り返します。

[String#each_char](../../../method/String/i/each_char.md) と違って、
Unicode Standard Annex #29 (<https://unicode.org/reports/tr29/>)
で定義された書記素クラスタに対して繰り返します。

```ruby title="例"
p "a\u0300".each_char.to_a.size # => 2
p "a\u0300".each_grapheme_cluster.to_a.size # => 1
```

- **SEE** [String#grapheme_clusters](../../../method/String/i/grapheme_clusters.md)
