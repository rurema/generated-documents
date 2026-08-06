# Struct#each

### def each {|value| ... } -> self
### def each -> Enumerator

構造体の各メンバに対して繰り返します。

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。

```ruby title="例"
Customer = Struct.new(:name, :address, :zip)
joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
joe.each {|x| puts(x) }

# => Joe Smith
#    123 Maple, Anytown NC
#    12345
```
