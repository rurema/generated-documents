# GC.disable

### def GC.disable -> bool

ガーベージコレクトを禁止します。

前回の禁止状態を返します(禁止されていたなら true, GC が有効であったなら、
false)。

```ruby title="例"
p GC.disable # => false
p GC.disable # => true
```

- **SEE** [GC.enable](../../../method/GC/s/enable.md)
