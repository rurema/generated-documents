# Object#object_id

### def object_id -> Integer

各オブジェクトに対して一意な整数を返します。あるオブジェクトに対してどのような整数が割り当てられるかは不定です。

Rubyでは、(Garbage Collectされていない)アクティブなオブジェクト間で重複しない整数(object_id)が各オブジェクトにひとつずつ割り当てられています。このメソッドはその値を返します。

[TrueClass](../../../class/TrueClass.md), [FalseClass](../../../class/FalseClass.md), [NilClass](../../../class/NilClass.md), [Symbol](../../../class/Symbol.md), [Integer](../../../class/Integer.md) クラスのインスタンスなど Immutable（変更不可）なオブジェクトの一部は同じ内容ならば必ず同じ object_id になります。

これは、Immutable ならば複数の場所から参照されても`破壊的操作`による問題が発生しないので、同じ内容のインスタンスを複数生成しないという内部実装が理由です。

```ruby
p "ruby".object_id #=> 60
p "ruby".object_id #=> 80

p [].object_id #=> 100
p [].object_id #=> 120

p :ruby.object_id #=> 710428
p :ruby.object_id #=> 710428

p 11.object_id #=> 23
p 11.object_id #=> 23

p true.object_id #=> 20
p true.object_id #=> 20
```

- **SEE** [Object#equal?](../../../method/Object/i/equal=3f.md),[BasicObject#__id__](../../../method/BasicObject/i/__id__.md),[Symbol](../../../class/Symbol.md)
