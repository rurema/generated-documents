# Thread#priority

### def priority    -> Integer

スレッドの優先度を返します。この値が大きいほど優先度が高くなります。
メインスレッドのデフォルト値は 0 です。新しく生成されたスレッドは親スレッドの
priority を引き継ぎます。

```ruby title="例"
p Thread.current.priority # => 0
```

- **SEE** [Thread#priority=](../../../method/Thread/i/priority=3d.md)
