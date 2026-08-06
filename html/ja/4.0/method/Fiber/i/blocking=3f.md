# Fiber#blocking?

### def blocking? -> bool

`self` がブロッキングなファイバーである場合に true を返します。
ノンブロッキングである場合は false を返します。

[Fiber.new](../../../method/Fiber/s/new.md) に `blocking: true` を指定して生成したファイバーがブロッキングです。

```ruby
p Fiber.new { }.blocking?                 # => false
p Fiber.new(blocking: true) { }.blocking? # => true
```

- **SEE** [Fiber.blocking?](../../../method/Fiber/s/blocking=3f.md), [Fiber#nonblocking](../../../class/Fiber.md#nonblocking)
