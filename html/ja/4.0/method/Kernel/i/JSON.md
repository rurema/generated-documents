# Kernel#JSON

### def JSON(object, options = {}) -> object

第一引数に与えられたオブジェクトの種類によって Ruby のオブジェクトか JSON 形式の文字列を返します。

第一引数に文字列のようなオブジェクトを指定した場合は、それを [JSON?.parse](../../../method/JSON/m/parse.md) を用いてパースした結果を返します。
そうでないオブジェクトを指定した場合は、それを [JSON?.generate](../../../method/JSON/m/generate.md) を用いて変換した結果を返します。

- **param** `object` -- 任意のオブジェクトを指定します。

- **param** `options` -- [JSON?.parse](../../../method/JSON/m/parse.md), [JSON?.generate](../../../method/JSON/m/generate.md) に渡すオプションを指定します。

```ruby title="例"
require "json"

p JSON('[1,2,{"name":"tanaka","age":19}]')
# => [1, 2, {"name"=>"tanaka", "age"=>19}]

p JSON('[1,2,{"name":"tanaka","age":19}]', symbolize_names: true)
# => [1, 2, {:name=>"tanaka", :age=>19}]
```

- **SEE** [JSON?.parse](../../../method/JSON/m/parse.md), [JSON?.generate](../../../method/JSON/m/generate.md)
