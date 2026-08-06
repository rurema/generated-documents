# String#grapheme_clusters

### def grapheme_clusters                             -> [String]
### def grapheme_clusters {|grapheme_cluster| block } -> self

文字列の書記素クラスタの配列を返します。(self.each_grapheme_cluster.to_a と同じです)

```ruby title="例"
p "a\u0300".grapheme_clusters # => ["à"]
```

ブロックが指定された場合は [String#each_grapheme_cluster](../../../method/String/i/each_grapheme_cluster.md) と同じように動作します。

Ruby 2.6 までは deprecated の警告が出ますが、Ruby 2.7 で警告は削除されました。

- **SEE** [String#each_grapheme_cluster](../../../method/String/i/each_grapheme_cluster.md)
