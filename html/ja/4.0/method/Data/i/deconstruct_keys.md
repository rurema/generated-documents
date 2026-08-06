# Data#deconstruct_keys

### def deconstruct_keys(array_of_names_or_nil) -> Hash

self のメンバの名前と値の組を Hash で返します。

```ruby title="例"
Measure = Data.define(:amount, :unit)

distance = Measure.new(10, 'km')
p distance.deconstruct_keys(nil)     # => {:amount=>10, :unit=>"km"}
p distance.deconstruct_keys([:amount]) # => {:amount=>10}
```

このメソッドは以下のようにパターンマッチで利用されます。

```ruby title="例"
Measure = Data.define(:amount, :unit)
distance = Measure.new(10, 'km')

case distance
in amount:, unit: 'km' # 裏側で #deconstruct_keys を呼ぶ
  puts "It is #{amount} kilometers away"
else
  puts "Don't know how to handle it"
end
# "It is 10 kilometers away" が表示される

# 以下のようにも書ける
case distance
in Measure(amount:, unit: 'km')
  puts "It is #{amount} kilometers away"
# ...
end
```

- **param** `array_of_names_or_nil` -- 返り値に含めるメンバの名前の配列を指定します。nil の場合は全てのメンバを意味します。

[注意] 本メソッドの記述は Data のサブクラスのインスタンスに対して呼び出す事を想定しています。Data.define は Data のサブクラスを作成する点に注意してください。

- **SEE** [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
