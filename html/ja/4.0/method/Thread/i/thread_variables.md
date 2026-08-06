# Thread#thread_variables

### def thread_variables -> [Symbol]

スレッドローカル変数の名前を [Symbol](../../../class/Symbol.md) の配列で返します。

[注意]: [Thread#\[\]](../../../method/Thread/i/=5b=5d.md) でセットしたローカル変数(Fiber ローカル変数)は対象ではない事に注意してください。

```ruby title="例"
thr = Thread.new do
  Thread.current.thread_variable_set(:cat, 'meow')
  Thread.current.thread_variable_set("dog", 'woof')
end
thr.join
p thr.thread_variables # => [:cat, :dog]
```

- **SEE** [Thread#thread_variable_get](../../../method/Thread/i/thread_variable_get.md), [Thread#thread_variable?](../../../method/Thread/i/thread_variable=3f.md), [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)
