# Thread#thread_variable?

### def thread_variable?(key) -> bool

引数 key で指定した名前のスレッドローカル変数が存在する場合に true、そうでない場合に false を返します。

- **param** `key` -- 変数名を [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で指定します。

```ruby
me = Thread.current
me.thread_variable_set(:oliver, "a")
p me.thread_variable?(:oliver)  # => true
p me.thread_variable?(:stanley) # => false
```

[注意]: [Thread#\[\]](../../../method/Thread/i/=5b=5d.md) でセットしたローカル変数(Fiber ローカル変数)が対象ではない事に注意してください。

- **SEE** [Thread#thread_variable_get](../../../method/Thread/i/thread_variable_get.md), [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)
