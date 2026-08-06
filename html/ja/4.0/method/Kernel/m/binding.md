# Kernel?.binding

### module_function def binding -> Binding

変数・メソッドなどの環境情報を含んだ [Binding](../../../class/Binding.md) オブジェクトを生成して返します。通常、[Kernel?.eval](../../../method/Kernel/m/eval.md) の第二引数として使います。

```ruby title="例"
def foo
  a = 1
  binding
end

p eval("p a", foo)  #=> 1
```

- **SEE** [Kernel?.eval](../../../method/Kernel/m/eval.md),[Object::TOPLEVEL_BINDING](../../../method/Object/c/TOPLEVEL_BINDING.md)
