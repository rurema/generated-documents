# CSV#shift

### def shift    -> Array | CSV::Row
### def gets     -> Array | CSV::Row
### def readline -> Array | CSV::Row

[String](../../../class/String.md) や [IO](../../../class/IO.md) をラップしたデータソースから一行だけ読み込んでフィールドの配列か [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスを返します。

データソースは読み込み用にオープンされている必要があります。

- **return** -- ヘッダを使用しない場合は配列を返します。
        ヘッダを使用する場合は [CSV::Row](../../../class/CSV=3a=3aRow.md) を返します。

```ruby title="例"
require "csv"

csv = CSV.new(DATA.read)
p csv.readline # => ["header1", "header2"]
p csv.readline # => ["row1_1", "row1_2"]

__END__
header1,header2
row1_1,row1_2
```
