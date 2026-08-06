# Thread#thread_variable_get

### def thread_variable_get(key) -> object | nil

引数 key で指定した名前のスレッドローカル変数を返します。

[注意]: [Thread#\[\]](../../../method/Thread/i/=5b=5d.md) でセットしたローカル変数(Fiber ローカル変数)と異なり、Fiber を切り替えても同じ変数を返す事に注意してください。

```ruby title="例"
Thread.new {
  Thread.current.thread_variable_set("foo", "bar") # スレッドローカル
  Thread.current["foo"] = "bar"                    # Fiber ローカル

  Fiber.new {
    Fiber.yield [
      Thread.current.thread_variable_get("foo"), # スレッドローカル
      Thread.current["foo"],                     # Fiber ローカル
    ]
  }.resume
}.join.value # => ['bar', nil]
```

この例の "bar" は [Thread#thread_variable_get](../../../method/Thread/i/thread_variable_get.md) により得られた値で、nil は[Thread#\[\]](../../../method/Thread/i/=5b=5d.md) により得られた値です。

- **SEE** [Thread#thread_variable_set](../../../method/Thread/i/thread_variable_set.md), [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)

- **SEE** <https://magazine.rubyist.net/articles/0041/0041-200Special-note.html>
