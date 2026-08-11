# CSV::Row#fields

### def fields(*headers_and_or_indices) -> Array
### def values_at(*headers_and_or_indices) -> Array

与えられた引数に対応する値の配列を返します。

要素の探索に [CSV::Row#field](../../../method/CSV=3a=3aRow/i/field.md) を使用しています。

- **param** `headers_and_or_indices` -- ヘッダの名前かインデックスか [Range](../../../class/Range.md)
                              のインスタンスか第 1 要素がヘッダの名前で第 2 要素がオフセットになっている 2 要素の配列をいくつでも指定します。混在できます。

- **return** -- 引数を与えなかった場合は全ての要素を返します。

```ruby
require 'csv'
csv = CSV.new("a,b,c\n1,2,3", headers: true)
table = csv.read
row = table.first
p row.values_at("a", 1, 2..3) # => ["1", "2", "3", nil]
```
