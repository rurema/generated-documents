# Thread#thread_variable_set

### def thread_variable_set(key, value)

引数 key で指定した名前のスレッドローカル変数に引数 value をセットします。

[注意]: [Thread#\[\]](../../../method/Thread/i/=5b=5d.md) でセットしたローカル変数(Fiber ローカル変数)と異なり、セットした変数は Fiber を切り替えても共通で使える事に注意してください。

```ruby title="例"
thr = Thread.new do
  Thread.current.thread_variable_set(:cat, 'meow')
  Thread.current.thread_variable_set("dog", 'woof')
end
p thr.join             # => #<Thread:0x401b3f10 dead>
p thr.thread_variables # => [:cat, :dog]
```

- **SEE** [Thread#thread_variable_get](../../../method/Thread/i/thread_variable_get.md), [Thread#thread_variables](../../../method/Thread/i/thread_variables.md), [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)
