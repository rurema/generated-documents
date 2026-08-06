# CSV::Row#deconstruct_keys

### def deconstruct_keys(keys) -> Hash

パターンマッチに使用するヘッダの名前と値の [Hash](../../../class/Hash.md) を返します。

このメソッドはヘッダ名の型をシンボルに変換しないため、ヘッダ名が文字列かつ Hash パターン でパターンマッチしたい場合はキーをシンボルに変換する必要があります。

- **param** `keys` -- パターンマッチに使用するヘッダの名前の配列を指定します。nil の場合は全てをパターンマッチに使用します。

```ruby title="例"
require "csv"

row = CSV::Row.new([:header1, :header2, :header3], [1, 2, 3])
case row
in { header1: 2.., header2: 2.., header3: 2.. }
  puts "all 2 or more"
in { header1: ...2, header2: 2.., header3: 2.. }
  puts "first column is less than 2, and rest columns are 2 or more"
end
#=> "first column is less than 2, and rest columns are 2 or more" が出力される
```

- **SEE** [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
