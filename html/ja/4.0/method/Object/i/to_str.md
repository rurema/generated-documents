# Object#to_str

### def to_str -> String
{: nomethod}

オブジェクトの [String](../../../class/String.md) への暗黙の変換が必要なときに内部で呼ばれます。
デフォルトでは定義されていません。

説明のためここに記載してありますが、このメソッドは実際には Object クラスには定義されていません。
必要に応じてサブクラスで定義すべきものです。

このメソッドを定義する条件は、
- 文字列が使われるすべての場面で代置可能であるような、
- 文字列そのものとみなせるようなもの
という厳しいものになっています。

```ruby
class Foo
  def to_str
    'Edition'
  end
end

it = Foo.new
p('Second' + it) #=> "SecondEdition"
```

- **SEE** [Object#to_s](../../../method/Object/i/to_s.md),[Kernel?.String](../../../method/Kernel/m/String.md)
