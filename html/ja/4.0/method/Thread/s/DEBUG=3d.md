# Thread.DEBUG=

### def Thread.DEBUG=(val)

スレッドのデバッグレベルを val に設定します。

val が 真 のときは Integer に変換してから設定します。
偽 のときは 0 を設定します。
使用するためには、THREAD_DEBUG を -1 にして Ruby をコンパイルする必要があります。通常配布されている Ruby では利用できません。

```ruby title="例"
p Thread.DEBUG # => 0
Thread.DEBUG = 1
p Thread.DEBUG # => 1
```

- **SEE** [Thread.DEBUG](../../../method/Thread/s/DEBUG.md)
