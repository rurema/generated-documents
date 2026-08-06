# UnboundMethod#original_name

### def original_name -> Symbol

オリジナルのメソッド名を返します。

```ruby title="例"
class C
  def foo; end
  alias bar foo
end
p C.instance_method(:bar).original_name # => :foo
```

- **SEE** [Method#original_name](../../../method/Method/i/original_name.md)
