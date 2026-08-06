# CSV.instance

### def CSV.instance(data = $stdout, **options) -> CSV
### def CSV.instance(data = $stdout, **options){|csv| ... } -> object

このメソッドは [CSV.new](../../../method/CSV/s/new.md) のように [CSV](../../../class/CSV.md) のインスタンスを返します。
しかし、返される値は [Object#object_id](../../../method/Object/i/object_id.md) と与えられたオプションをキーとしてキャッシュされます。

ブロックが与えられた場合、生成されたインスタンスをブロックに渡して評価した結果を返します。

- **param** `data` -- [String](../../../class/String.md) か [IO](../../../class/IO.md) のインスタンスを指定します。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。

```ruby title="例"
require "csv"

options = { headers: true }

text =<<-EOS
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
EOS

csv = CSV.instance(text, options)
csv2 = CSV.instance(text, options)
p csv.object_id == csv2.object_id # => true
print csv.read

# => id,first name,last name,age
# 1,taro,tanaka,20
# 2,jiro,suzuki,18
# 3,ami,sato,19
# 4,yumi,adachi,21
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
