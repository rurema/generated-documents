# Object#remove_instance_variable

### def remove_instance_variable(name) -> object

オブジェクトからインスタンス変数 name を取り除き、そのインスタンス変数に設定されていた値を返します。

- **param** `name` -- 削除するインスタンス変数の名前をシンボルか文字列で指定します。
- **raise** `NameError` -- オブジェクトがインスタンス変数 name を持たない場合に発生します。

```ruby
class Foo
  def foo
    @foo = 1
    p remove_instance_variable(:@foo) #=> 1
    p remove_instance_variable(:@foo) # instance variable @foo not defined (NameError)
  end
end
Foo.new.foo
```

- **SEE** [Module#remove_class_variable](../../../method/Module/i/remove_class_variable.md),[Module#remove_const](../../../method/Module/i/remove_const.md)
