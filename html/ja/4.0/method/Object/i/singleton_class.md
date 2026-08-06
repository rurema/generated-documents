# Object#singleton_class

### def singleton_class -> Class

レシーバの特異クラスを返します。
まだ特異クラスがなければ、新しく作成します。

レシーバが nil か true か false なら、それぞれ NilClass, TrueClass,
FalseClass を返します。

- **raise** `TypeError` -- レシーバが [Integer](../../../class/Integer.md)、[Float](../../../class/Float.md)、[Symbol](../../../class/Symbol.md) の場合に発生します。

```ruby
p Object.new.singleton_class  #=> #<Class:#<Object:0xb7ce1e24>>
p String.singleton_class    #=> #<Class:String>
p nil.singleton_class       #=> NilClass
```

- **SEE** [Object#class](../../../method/Object/i/class.md)
