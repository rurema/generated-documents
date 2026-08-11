# BasicObject#instance_exec

### def instance_exec(*args) {|*vars| ... } -> object

与えられたブロックをレシーバのコンテキストで実行します。

ブロック実行中は、 self がレシーバのコンテキストになるのでレシーバの持つインスタンス変数にアクセスできます。

- **param** `args` -- ブロックパラメータに渡す値です。

```ruby title="例"
class KlassWithSecret
  def initialize
    @secret = 99
  end
end
k = KlassWithSecret.new
# 以下で x には 5 が渡される
p k.instance_exec(5) {|x| @secret + x } # => 104
```

- **SEE** [Module#class_exec](../../../method/Module/i/class_exec.md), [Module#module_exec](../../../method/Module/i/module_exec.md), [BasicObject#instance_eval](../../../method/BasicObject/i/instance_eval.md)
