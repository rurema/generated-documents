# Fiber.scheduler

### def Fiber.scheduler -> object | nil

現在のスレッドに設定されているスケジューラを返します。
設定されていない場合は nil を返します。

```ruby
p Fiber.scheduler # => nil
```

- **SEE** [Fiber.set_scheduler](../../../method/Fiber/s/set_scheduler.md)
- **SEE** [Fiber.current_scheduler](../../../method/Fiber/s/current_scheduler.md)
