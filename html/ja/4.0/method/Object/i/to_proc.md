# Object#to_proc

### def to_proc -> Proc
{: nomethod}

オブジェクトの [Proc](../../../class/Proc.md) への暗黙の変換が必要なときに内部で呼ばれます。
デフォルトでは定義されていません。

説明のためここに記載してありますが、このメソッドは実際には Object クラスには定義されていません。
必要に応じてサブクラスで定義すべきものです。

```ruby
def doing
  yield
end

class Foo
  def to_proc
    Proc.new{p 'ok'}
  end
end

it = Foo.new
p doing(&it) # => "ok"
```
