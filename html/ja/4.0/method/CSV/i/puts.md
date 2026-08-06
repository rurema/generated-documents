# CSV#puts

### def <<(row)      -> self
### def add_row(row) -> self
### def puts(row)    -> self

自身に row を追加します。

データソースは書き込み用にオープンされていなければなりません。

- **param** `row` -- 配列か [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスを指定します。
           [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスが指定された場合は、[CSV::Row#fields](../../../method/CSV=3a=3aRow/i/fields.md) の値
           のみが追加されます。

```ruby title="例 配列を指定"
require "csv"

File.write("test.csv", <<CSV)
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
CSV
CSV.open("test.csv", "a") do |csv|
  csv.puts(["5", "saburo", "kondo", "34"])
end

print File.read("test.csv")
# => id,first name,last name,age
#    1,taro,tanaka,20
#    2,jiro,suzuki,18
#    3,ami,sato,19
#    4,yumi,adachi,21
#    5,saburo,kondo,34
```

```ruby title="例 CSV::Row を指定"
require "csv"

File.write("test.csv", <<CSV)
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
CSV
CSV.open("test.csv", "a") do |csv|
  row = CSV::Row.new(["id", "first name", "last name", "age"], ["5", "saburo", "kondo", "34"])
  csv.add_row(row)
end

print File.read("test.csv")
# => "id", first name,last name,age
#    1,taro,tanaka,20
#    2,jiro,suzuki,18
#    3,ami,sato,19
#    4,yumi,adachi,21
#    5,saburo,kondo,34
```
