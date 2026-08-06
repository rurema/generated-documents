# class BasicObject

特殊な用途のために意図的にほとんど何も定義されていないクラスです。
[Object](../class/Object.md)クラスの親にあたります。Ruby 1.9 以降で導入されました。

### 性質

BasicObject クラスは Object クラスからほとんどのメソッドを取り除いたクラスです。

Object クラスは様々な便利なメソッドや [Kernel](../class/Kernel.md) から受け継いだ関数的メソッドを多数有しています。
これに対して、 BasicObject クラスはオブジェクトの同一性を識別したりメソッドを呼んだりする最低限の機能の他は一切の機能を持っていません。

### 用途

基本的にはほぼすべてのクラスの親は [Object](../class/Object.md) と考えて差し支えありません。
しかし、ある種のクラスを定義する際には Object クラスは持っているメソッドが多すぎる場合があります。

例えば、 [BasicObject#method_missing](../method/BasicObject/i/method_missing.md)を利用して Proxy パターンを実装する場合にはObject クラスに定義済みのメソッドはプロクシできないという問題が発生します。このような場合に Object ではなく BasicObject から派生して問題を解決できます。

### 注意

通常のクラスは Object またはその他の適切なクラスから派生すべきです。
真に必要な場合にだけ BasicObject から派生してください。

### 例

```ruby title="例"
class Proxy < BasicObject
  def initialize(target)
    @target = target
  end
 
  def method_missing(message, *args)
    @target.__send__(message, *args)
  end
end

proxy = Proxy.new("1")
proxy.to_i #=> 1
```

## Instance Methods

- [!](../method/BasicObject/i/=21.md)
- [!=](../method/BasicObject/i/=21=3d.md)
- [==](../method/BasicObject/i/=3d=3d.md)
- [__id__](../method/BasicObject/i/__id__.md)
- [__send__](../method/BasicObject/i/__send__.md)
- [equal?](../method/BasicObject/i/equal=3f.md)
- [instance_eval](../method/BasicObject/i/instance_eval.md)
- [instance_exec](../method/BasicObject/i/instance_exec.md)

## Private Instance Methods

- [method_missing](../method/BasicObject/i/method_missing.md)
- [singleton_method_added](../method/BasicObject/i/singleton_method_added.md)
- [singleton_method_removed](../method/BasicObject/i/singleton_method_removed.md)
- [singleton_method_undefined](../method/BasicObject/i/singleton_method_undefined.md)
