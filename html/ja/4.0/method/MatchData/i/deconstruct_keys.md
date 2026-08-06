# MatchData#deconstruct_keys

### def deconstruct_keys(array_of_names) -> Hash

引数で指定された名前の名前付きキャプチャを [Hash](../../../class/Hash.md) で返します。

[Hash](../../../class/Hash.md) のキーは名前付きキャプチャの名前のシンボル、値はキーの名前に対応した名前付きグループのうち最後にマッチした文字列です。

- **param** `array_of_names` -- 名前付きキャプチャの名前の配列を指定します。`nil` の場合は全ての名前付きキャプチャを意味します。

```ruby title="例"
m = /(?<hours>\d{2}):(?<minutes>\d{2}):(?<seconds>\d{2})/.match("18:37:22")
p m.deconstruct_keys([:hours, :minutes]) # => {:hours => "18", :minutes => "37"}
p m.deconstruct_keys(nil) # => {:hours => "18", :minutes => "37", :seconds => "22"}

# 名前付きキャプチャが定義されていなかった場合は空のハッシュを返す
m = /(\d{2}):(\d{2}):(\d{2})/.match("18:37:22")
p m.deconstruct_keys(nil) # => {}
```

- **SEE** [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
