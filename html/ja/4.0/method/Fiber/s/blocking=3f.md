# Fiber.blocking?

### def Fiber.blocking? -> false | 1

現在の実行コンテキストがブロッキングである場合に 1 を返します。
ノンブロッキングである場合は false を返します。

将来のバージョンで、1 以外のブロッキングレベルを表す値が返るようになる可能性があります。

```ruby
p Fiber.blocking?                                      # => 1
p Fiber.new { Fiber.blocking? }.resume                 # => false
p Fiber.new(blocking: true) { Fiber.blocking? }.resume # => 1
```

- **SEE** [Fiber#blocking?](../../../method/Fiber/i/blocking=3f.md), [Fiber#nonblocking](../../../class/Fiber.md#nonblocking)
