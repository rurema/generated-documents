# Fiber.current

### def Fiber.current -> Fiber

このメソッドが評価されたコンテキストにおける [Fiber](../../../class/Fiber.md) のインスタンスを返します。

```ruby title="例:"
fr = Fiber.new do
 Fiber.current
end

fb = fr.resume
p fb.equal?(fr) # => true

p Fiber.current # => #<Fiber:0x91345e4>
p Fiber.current # => #<Fiber:0x91345e4>
```
