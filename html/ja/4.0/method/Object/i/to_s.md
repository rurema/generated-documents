# Object#to_s

### def to_s -> String

オブジェクトの文字列表現を返します。

[Kernel?.print](../../../method/Kernel/m/print.md) や [Kernel?.sprintf](../../../method/Kernel/m/sprintf.md) は文字列以外のオブジェクトが引数に渡された場合このメソッドを使って文字列に変換します。

```ruby
class Foo
  def initialize num
    @num = num
  end
end
it = Foo.new(40)

puts it #=> #<Foo:0x2b69110>

class Foo
  def to_s
    "Class:Foo Number:#{@num}"
  end
end

puts it #=> Class:Foo Number:40
```

- **SEE** [Object#to_str](../../../method/Object/i/to_str.md),[Kernel?.String](../../../method/Kernel/m/String.md)
