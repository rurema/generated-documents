# CSV.generate

### def CSV.generate(str = "", options = Hash.new){|csv| ... } -> String

このメソッドは与えられた文字列をラップして [CSV](../../../class/CSV.md) のオブジェクトとしてブロックに渡します。
ブロック内で [CSV](../../../class/CSV.md) オブジェクトに行を追加できます。
ブロックを評価した結果は文字列を返します。

このメソッドに与えられた文字列は変更されるので、新しい文字列オブジェクトが必要な場合は [Object#dup](../../../method/Object/i/dup.md) で複製してください。

- **param** `str` -- 文字列を指定します。デフォルトは空文字列です。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。
               :encoding というキーを使用すると出力のエンコーディングを指定できます。
               ASCII と互換性の無い文字エンコーディングを持つ文字列を出力する場合は、このヒントを
               指定する必要があります。

```ruby title="例"
require "csv"

text =<<-EOS
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
EOS

csv = CSV.generate(text, headers: true) do |csv|
  csv.add_row(["5", "saburo", "kondo", "34"])
end

print csv
# => id,first name,last name,age
# 1,taro,tanaka,20
# 2,jiro,suzuki,18
# 3,ami,sato,19
# 4,yumi,adachi,21
# 5,saburo,kondo,34
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
