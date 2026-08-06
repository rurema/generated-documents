# Method#original_name

### def original_name -> Symbol

オリジナルのメソッド名を返します。

```ruby title="例"
class C
  def foo; end
  alias bar foo
end
p C.new.method(:bar).original_name # => :foo
```

- **SEE** [UnboundMethod#original_name](../../../method/UnboundMethod/i/original_name.md)
