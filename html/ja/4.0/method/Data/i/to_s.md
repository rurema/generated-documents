# Data#to_s

### def inspect -> String
### def to_s    -> String

self の内容を人間に読みやすい文字列にして返します。

```ruby title="例"
Customer = Data.define(:name, :address, :zip)
joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
p joe.inspect # => "#<data Customer name=\"Joe Smith\", address=\"123 Maple, Anytown NC\", zip=12345>"
```

[注意] 本メソッドの記述は Data のサブクラスのインスタンスに対して呼び出す事を想定しています。Data.define は Data のサブクラスを作成する点に注意してください。
