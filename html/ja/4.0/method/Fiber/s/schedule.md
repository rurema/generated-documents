# Fiber.schedule

### def Fiber.schedule(*args) {|*args| ... } -> Fiber

現在のスレッドに設定されているスケジューラを使って、ブロックをノンブロッキングなファイバーで実行します。

ファイバーの生成はスケジューラのフックメソッドに委譲されます。
そのため、ブロックがただちに実行されるかどうかはスケジューラの実装に依存します。

- **param** `args` -- ブロックの引数として渡されます。
- **return** -- 生成されたファイバーを返します。
- **raise** `RuntimeError` -- スケジューラが設定されていない場合に発生します。

```ruby title="例: スケジューラが設定されていない場合"
Fiber.schedule { }  # ~> RuntimeError: No scheduler is available!
```

- **SEE** [Fiber.set_scheduler](../../../method/Fiber/s/set_scheduler.md), [Fiber#nonblocking](../../../class/Fiber.md#nonblocking)
