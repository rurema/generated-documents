# JSON?.dump

### module_function def dump(object, io = nil, limit = nil) -> String | IO

与えられたオブジェクトを JSON 形式の文字列に変換してダンプします。

与えられたオブジェクトを引数として [JSON?.generate](../../../method/JSON/m/generate.md) を呼び出します。

- **param** `object` -- ダンプするオブジェクトを指定します。

- **param** `io` --  [IO](../../../class/IO.md) のように write メソッドを実装しているオブジェクトを指定します。

- **param** `limit` -- 指定した場合、limit 段以上深くリンクしたオブジェクトをダンプできません。

- **raise** `ArgumentError` -- オブジェクトのネストの深さが limit を越えた場合に発生します。

```ruby title="例"
require "json"

p JSON.dump({ name: "tanaka", age: 19 }) # => "{\"name\":\"tanaka\",\"age\":19}"
```

```ruby title="例"
require "json"

File.open("test.txt", "w") do |f|
  p JSON.dump([[[[[[[[[[]]]]]]]]]], f, 10) # => #<File:test.txt>
  JSON.dump([[[[[[[[[[[]]]]]]]]]]], f, 10) # => exceed depth limit (ArgumentError)
end
```

- **SEE** [Marshal](../../../class/Marshal.md), [Marshal?.dump](../../../method/Marshal/m/dump.md)
