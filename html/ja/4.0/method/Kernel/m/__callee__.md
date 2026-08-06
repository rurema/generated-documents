# Kernel?.__callee__

### module_function def __callee__ -> Symbol | nil

現在のメソッド名を返します。
メソッドの外で呼ばれると nil を返します。

```ruby title="例"
def foo
  p __callee__
end
alias :bar :foo
p foo # => :foo
p bar # => :bar
p __callee__ # => nil
```

[Kernel?.__method__](../../../method/Kernel/m/__method__.md) とは異なり、現在のメソッド名が alias されたメソッドの場合には alias 先のメソッド名を返します。

- **SEE** [Kernel?.__method__](../../../method/Kernel/m/__method__.md)
