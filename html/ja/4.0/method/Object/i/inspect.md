# Object#inspect

### def inspect -> String

オブジェクトを人間が読める形式に変換した文字列を返します。

組み込み関数 [Kernel?.p](../../../method/Kernel/m/p.md) は、このメソッドの結果を使用してオブジェクトを表示します。

```ruby
p [ 1, 2, 3..4, 'five' ].inspect # => "[1, 2, 3..4, \"five\"]"
p Time.new.inspect               # => "2008-03-08 19:43:39 +0900"
```

inspect メソッドをオーバーライドしなかった場合、クラス名とインスタンス変数の名前、値の組を元にした文字列を返します。

```ruby
class Foo
end
p Foo.new.inspect                # => "#<Foo:0x0300c868>"

class Bar
  def initialize
    @bar = 1
  end
end
p Bar.new.inspect                # => "#<Bar:0x0300c868 @bar=1>"
```

inspect をオーバーライドしていない場合、
instance_variables_to_inspect を定義することで、inspect の出力に含めるインスタンス変数を制御できます。このメソッドは、表示したいインスタンス変数名を
[Symbol](../../../class/Symbol.md) の配列で返すようにします（デフォルトの実装は nil を返し、その場合は全てのインスタンス変数が表示されます）。パスワードなどの機密情報を持つインスタンス変数を inspect の出力（ログなど）に含めたくない場合に利用できます。

```ruby
class Foo
  def initialize
    @a = 1
    @password = "secret"
    @b = 2
  end
  private def instance_variables_to_inspect = [:@a, :@b]
end
p Foo.new.inspect                # => "#<Foo:0x0300c868 @a=1, @b=2>"
```


- **SEE** [Kernel?.p](../../../method/Kernel/m/p.md)
