# Struct#size

### def length -> Integer
### def size -> Integer

構造体のメンバの数を返します。

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。

```ruby title="例"
Customer = Struct.new(:name, :address, :zip)
joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
p joe.length #=> 3
```
