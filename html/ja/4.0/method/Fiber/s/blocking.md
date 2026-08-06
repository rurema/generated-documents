# Fiber.blocking

### def Fiber.blocking {|fiber| ... } -> object

ブロックを実行している間だけ、現在のファイバーをブロッキングにします。

ブロックには現在のファイバーが渡されます。
現在のファイバーがすでにブロッキングである場合は、単にブロックを実行します。

- **return** -- ブロックの評価結果を返します。

```ruby
f = Fiber.new do
  p Fiber.blocking?   # => false
  Fiber.blocking do
    p Fiber.blocking? # => 1
  end
  p Fiber.blocking?   # => false
end
f.resume
```

- **SEE** [Fiber.blocking?](../../../method/Fiber/s/blocking=3f.md), [Fiber#nonblocking](../../../class/Fiber.md#nonblocking)
