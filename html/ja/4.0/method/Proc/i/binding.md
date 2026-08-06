# Proc#binding

### def binding -> Binding

Proc オブジェクトが保持するコンテキストを 
[Binding](../../../class/Binding.md) オブジェクトで返します。

```ruby title="例"
def fred(param)
  proc {}
end

sample_proc = fred(99)
p eval("param", sample_proc.binding) # => 99
```
