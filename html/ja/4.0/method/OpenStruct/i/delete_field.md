# OpenStruct#delete_field

### def delete_field(name) -> object
### def delete_field(name) { ... } -> object

nameで指定された要素を削除します。

その後その要素を参照したら nil が返ります。

`name` で指定された要素が無い場合、ブロックを指定していればブロックを引数なしで呼び出し、その値を返します。要素がある場合はブロックを呼び出しません。

```ruby title="例"
require 'ostruct'

p OpenStruct.new(x: 1).delete_field(:x) { :dflt } # => 1
p OpenStruct.new.delete_field(:x) { :dflt }       # => :dflt
```

- **param** `name` -- 削除する要素を文字列かシンボルで指定します。
- **return** -- 削除前の要素の値を返します。
- **raise** `NameError` -- `name` で指定された要素が無く、ブロックも指定しなかった場合に発生します。
