# GC.enable

### def GC.enable -> bool

ガーベージコレクトを許可します。

前回の禁止状態を返します(禁止されていたなら true, GC が有効であったなら、
false)。

- **SEE** [GC.disable](../../../method/GC/s/disable.md)

```ruby title="例"
p GC.disable # => false
p GC.enable  # => true
p GC.enable  # => false
```
