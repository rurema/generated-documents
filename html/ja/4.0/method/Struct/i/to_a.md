# Struct#to_a

### def values -> [object]
### def to_a -> [object]
### def deconstruct -> [object]
{: since="2.7.0"}

構造体のメンバの値を配列にいれて返します。

```ruby title="例"
Customer = Struct.new(:name, :address, :zip)
p Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345).to_a
# => ["Joe Smith", "123 Maple, Anytown NC", 12345]
```

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。

- **SEE** [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
