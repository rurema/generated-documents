# Struct#to_h

### def to_h -> Hash
### def to_h {|member, value| block } -> Hash

self のメンバ名([Symbol](../../../class/Symbol.md))と値の組を [Hash](../../../class/Hash.md) にして返します。

```ruby title="例"
Customer = Struct.new(:name, :address, :zip)
p Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345).to_h
# => {:name=>"Joe Smith", :address=>"123 Maple, Anytown NC", :zip=>12345}
```

ブロックを指定すると各ペアでブロックを呼び出し、その結果をペアとして使います。

```ruby title="ブロック付きの例"
Customer = Struct.new(:name, :address, :zip)
p Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345).to_h {|member, value|
  [member, value*2]
} # => {:name=>"Joe SmithJoe Smith", :address=>"123 Maple, Anytown NC123 Maple, Anytown NC", :zip=>24690}
```

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。
