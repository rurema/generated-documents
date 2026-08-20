# class Data < Object

「値オブジェクト(value object)」の定義に利用できるクラスです。

以下のような特徴があります。

  - オブジェクト同士の比較は、型の比較およびメンバの値の比較によって行われます。
  - オブジェクトはイミュータブルになります。すなわち、オブジェクト生成時に設定されたメンバはその後上書きされることはありません。

[Data.define](../method/Data/s/define.md) でオブジェクトのクラスを定義できます。定義されたクラスは Data のサブクラスとなります。
Data のサブクラスでは、メンバに対するアクセスメソッドが定義されています。

Data と似たクラスに [Struct](../class/Struct.md) があります。Struct はメンバの書き換えや列挙が可能であるなど、よりコンテナ風の API を提供するクラスです。

```ruby title="例"
# Dogクラスを定義
Dog = Data.define(:name, :age)

# Dogクラスのインスタンスを作成
fred = Dog.new("Fred", 5)

# メンバにアクセスできる
p fred.name # => "Fred"

# キーワード引数でも構築できる
p Dog.new(name: "Terry", age: 3)

# メンバの値を書き換えることはできない
fred.age = 6 # ~> NoMethodError
```

なお、Ruby 2.7 まで存在し Ruby 3.0 で削除された Data クラスとは異なります。

## Class Methods

- [\[\]](../method/Data/s/=5b=5d.md)
- [new](../method/Data/s/new.md)
- [define](../method/Data/s/define.md)
- [members](../method/Data/s/members.md)

## Instance Methods

- [==](../method/Data/i/=3d=3d.md)
- [deconstruct](../method/Data/i/deconstruct.md)
- [deconstruct_keys](../method/Data/i/deconstruct_keys.md)
- [eql?](../method/Data/i/eql=3f.md)
- [hash](../method/Data/i/hash.md)
- [inspect](../method/Data/i/inspect.md)
- [to_s](../method/Data/i/to_s.md)
- [members](../method/Data/i/members.md)
- [to_h](../method/Data/i/to_h.md)
- [with](../method/Data/i/with.md)
