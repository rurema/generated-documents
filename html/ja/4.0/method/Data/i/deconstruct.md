# Data#deconstruct

### def deconstruct   -> [object]

self のメンバの値を配列で返します。

```ruby title="例"
Measure = Data.define(:amount, :unit)

distance = Measure.new(10, 'km')
p distance.deconstruct # => [10, "km"]
```

このメソッドは以下のようにパターンマッチで利用されます。

```ruby title="例"
Measure = Data.define(:amount, :unit)
distance = Measure.new(10, 'km')

case distance
in n, 'km' # 裏側で #deconstruct を呼ぶ
  puts "It is #{n} kilometers away"
else
  puts "Don't know how to handle it"
end
# "It is 10 kilometers away" が表示される

# 以下のようにも書ける
case distance
in Measure(n, 'km')
  puts "It is #{n} kilometers away"
# ...
end
```

[注意] 本メソッドの記述は Data のサブクラスのインスタンスに対して呼び出す事を想定しています。Data.define は Data のサブクラスを作成する点に注意してください。

- **SEE** [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
