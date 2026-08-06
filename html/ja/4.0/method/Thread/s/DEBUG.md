# Thread.DEBUG

### def Thread.DEBUG -> Integer

スレッドのデバッグレベルを返します。

スレッドのデバッグレベルが 0 のときはなにもしません。
それ以外の場合は、スレッドのデバッグログを標準出力に出力します。
初期値は 0 です。
使用するためには、THREAD_DEBUG を -1 にして Ruby をコンパイルする必要があります。通常配布されている Ruby では利用できません。

```ruby title="例"
p Thread.DEBUG # => 0
```

- **SEE** [Thread.DEBUG=](../../../method/Thread/s/DEBUG=3d.md)
