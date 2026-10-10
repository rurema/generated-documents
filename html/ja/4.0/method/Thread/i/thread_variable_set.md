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

value に `nil` を指定しても変数は削除されず、値が `nil` の変数として
[Thread#thread_variables](../../../method/Thread/i/thread_variables.md) の結果に残ります
([Thread#thread_variable?](../../../method/Thread/i/thread_variable=3f.md) は false を返します)。

```ruby title="nil を指定した例"
th = Thread.current
th.thread_variable_set(:x, 1)
th.thread_variable_set(:x, nil)
p th.thread_variable?(:x)  # => false
p th.thread_variables      # => [:x]
```


- **SEE** [Thread#thread_variable_get](../../../method/Thread/i/thread_variable_get.md), [Thread#thread_variables](../../../method/Thread/i/thread_variables.md), [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)
