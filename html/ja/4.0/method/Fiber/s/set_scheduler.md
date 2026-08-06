# Fiber.set_scheduler

### def Fiber.set_scheduler(scheduler) -> object

現在のスレッドにスケジューラを設定します。

スケジューラを設定すると、ノンブロッキングファイバーの中でブロックしうる操作を行った際に、スケジューラのフックメソッドが呼ばれるようになります。
またスレッドの終了時にスケジューラの close メソッドが呼ばれ、終了していないファイバーの後始末ができるようになっています。

- **param** `scheduler` -- スケジューラとして振る舞うオブジェクトを指定します。
  nil を指定するとスケジューラを解除します。
- **return** -- `scheduler` をそのまま返します。
- **raise** `ArgumentError` -- scheduler が必要なフックメソッドを実装していない場合に発生します。

```ruby
Fiber.set_scheduler(Object.new) # ~> ArgumentError: Scheduler must implement #block
```

- **SEE** [Fiber.scheduler](../../../method/Fiber/s/scheduler.md), [Fiber.schedule](../../../method/Fiber/s/schedule.md), [Fiber#nonblocking](../../../class/Fiber.md#nonblocking)
