# Data#hash

### def hash    -> Integer

自身のハッシュ値を整数で返します。
[Data#eql?](../../../method/Data/i/eql=3f.md) で比較して等しいオブジェクトは同じハッシュ値を返します。

```ruby title="例"
Dog = Data.define(:name, :age)
dog1 = Dog.new("Fred", 5)
p dog1.hash # => -3931425561194935428
dog2 = Dog.new("Fred", 5)
p dog2.hash # => -3931425561194935428
dog3 = Dog.new("Fred", 6)
p dog3.hash # => -4469132459285820530
```

[注意] 本メソッドの記述は Data のサブクラスのインスタンスに対して呼び出す事を想定しています。Data.define は Data のサブクラスを作成する点に注意してください。

- **SEE** [Object#hash](../../../method/Object/i/hash.md)
