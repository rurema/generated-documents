# Module#extend_object

### def extend_object(obj) -> object

[Object#extend](../../../method/Object/i/extend.md) の実体です。オブジェクトにモジュールの機能を追加します。

[Object#extend](../../../method/Object/i/extend.md) は、Ruby で書くと以下のように定義できます。

```ruby title="例"
def extend(*modules)
  modules.reverse_each do |mod|
    # extend_object や extended はプライベートメソッドなので
    # 直接 mod.extend_object(self) などとは書けない
    mod.__send__(:extend_object, self)
    mod.__send__(:extended, self)
  end
end
```

extend_object のデフォルトの実装では、self に定義されているインスタンスメソッドを obj の特異メソッドとして追加します。

- **param** `obj` -- self の機能を追加するオブジェクトを指定します。

- **return** -- obj で指定されたオブジェクトを返します。

- **SEE** [Module#extended](../../../method/Module/i/extended.md)
