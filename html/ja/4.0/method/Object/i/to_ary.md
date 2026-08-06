# Object#to_ary

### def to_ary -> Array
{: nomethod}

オブジェクトの [Array](../../../class/Array.md) への暗黙の変換が必要なときに内部で呼ばれます。
デフォルトでは定義されていません。

説明のためここに記載してありますが、このメソッドは実際には Object クラスには定義されていません。
必要に応じてサブクラスで定義すべきものです。

このメソッドを定義する条件は、
- 配列が使われるすべての場面で代置可能であるような、
- 配列そのものとみなせるようなもの
という厳しいものになっています。

```ruby
class Foo
  def to_ary
    [3,4]
  end
end

it = Foo.new
p([1,2] + it) #=> [1, 2, 3, 4]
```

- **SEE** [Object#to_a](../../../method/Object/i/to_a.md),[Kernel?.Array](../../../method/Kernel/m/Array.md)
