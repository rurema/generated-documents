# CSV.read

### def CSV.read(path, options = Hash.new) -> [Array] | CSV::Table
### def CSV.readlines(path, options = Hash.new) -> [Array] | CSV::Table

CSV ファイルを配列の配列にするために使います。
headers オプションに偽でない値を指定した場合は [CSV::Table](../../../class/CSV=3a=3aTable.md) オブジェクトを返します。

- **param** `path` -- CSV ファイルのパス(文字列)、または [StringIO](../../../class/StringIO.md) オブジェクトを指定します。[StringIO](../../../class/StringIO.md) を渡した場合はその内容から読み込みます。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。
               :encoding というキーを使用すると入力のエンコーディングを指定できます。
               入力のエンコーディングが [Encoding.default_external](../../../method/Encoding/s/default_external.md) と異なる場合は
               必ず指定しなければなりません。

```ruby title="例"
require "csv"
require "pp"

File.write("test.csv", <<CSV)
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
CSV

pp CSV.read("test.csv")

# => [["id", "first name", "last name", "age"],
#    ["1", "taro", "tanaka", "20"],
#    ["2", "jiro", "suzuki", "18"],
#    ["3", "ami", "sato", "19"],
#    ["4", "yumi", "adachi", "21"]]
```

```ruby title="例"
require "csv"

File.write("test.csv", <<CSV)
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
CSV

table = CSV.read("test.csv", headers: true)
p table.class # => CSV::Table
p table[0]    # => #<CSV::Row "id":"1" "first name":"taro" "last name":"tanaka" "age":"20">
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md), [CSV.table](../../../method/CSV/s/table.md)
