# Data#eql?

### def eql?(other)   -> bool

self と other のクラスが同じであり、各メンバが eql? メソッドで比較して等しい場合に
true を返します。そうでない場合に false を返します。

- **param** `other` -- self と比較したいオブジェクトを指定します。

```ruby title="例"
Dog = Data.define(:name, :age)
dog1 = Dog.new("Fred", 5)
dog2 = Dog.new("Fred", 5)

p dog1 == dog2                # => true
p dog1.eql?(dog2)             # => true
p dog1.equal?(dog2)           # => false
```

[注意] 本メソッドの記述は Data のサブクラスのインスタンスに対して呼び出す事を想定しています。Data.define は Data のサブクラスを作成する点に注意してください。

- **SEE** [Object#eql?](../../../method/Object/i/eql=3f.md), [Data#==](../../../method/Data/i/=3d=3d.md)
