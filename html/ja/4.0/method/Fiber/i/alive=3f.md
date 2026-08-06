# Fiber#alive?

### def alive? -> bool

ファイバーが「生きている」時、真を返します。

このメソッドが真を返すのは以下の場合です。

- まだ [Fiber#resume](../../../method/Fiber/i/resume.md) されていない
- ブロック内の評価が終了していない ([Fiber.yield](../../../method/Fiber/s/yield.md) が呼ばれていない)

```ruby title="例:"
fr = Fiber.new{
Fiber.yield
"a"
}

p fr.alive? # => true
fr.resume   # Fiber.yieldで戻ってくる
p fr.alive? # => true
fr.resume   # ブロック内の評価を終えて戻ってくる
p fr.alive? # => false
```
