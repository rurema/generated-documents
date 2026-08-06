# Fiber.current_scheduler

### def Fiber.current_scheduler -> object | nil

現在のスレッドに設定されているスケジューラを返します。
ただし現在のファイバーがブロッキングである場合は nil を返します。

現在のファイバーがブロッキングかどうかに関わらずスケジューラを取得したい場合は
[Fiber.scheduler](../../../method/Fiber/s/scheduler.md) を使用してください。

- **SEE** [Fiber.scheduler](../../../method/Fiber/s/scheduler.md), [Fiber.set_scheduler](../../../method/Fiber/s/set_scheduler.md)
