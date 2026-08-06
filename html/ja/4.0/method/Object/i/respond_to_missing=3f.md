# Object#respond_to_missing?

### def respond_to_missing?(symbol, include_private) -> bool

自身が symbol で表されるメソッドに対し
[BasicObject#method_missing](../../../method/BasicObject/i/method_missing.md) で反応するつもりならば真を返します。

[Object#respond_to?](../../../method/Object/i/respond_to=3f.md) はメソッドが定義されていない場合、デフォルトでこのメソッドを呼びだし問合せます。

[BasicObject#method_missing](../../../method/BasicObject/i/method_missing.md) を override した場合にこのメソッドも
override されるべきです。

このメソッドの既定の実装(Object#respond_to_missing?)は常に false を返します。

- **param** `symbol` -- メソッド名シンボル
- **param** `include_private` -- private method も含めたい場合に true が渡されます

```ruby title="例"
class Sample
  def method_missing(name, *args)
    if name =~ /^to_*/
      p [name, *args] # => [:to_sample, "sample args1", "sample args2"]
      return
    else
      super
    end
  end

  def respond_to_missing?(sym, include_private)
    (sym =~ /^to_*/) ? true : super
  end
end

s = Sample.new
s.to_sample("sample args1", "sample args2")
p s.respond_to?(:to_sample)  # => true
p s.respond_to?(:sample)  # => false
```

- **SEE** [Object#respond_to?](../../../method/Object/i/respond_to=3f.md), [BasicObject#method_missing](../../../method/BasicObject/i/method_missing.md)
