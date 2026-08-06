# Fiber#backtrace

### def backtrace                -> [String]
### def backtrace(start)         -> [String]
### def backtrace(start, length) -> [String]
### def backtrace(range)         -> [String]

`self` が表すファイバーの現在の実行スタックを返します。

引数を指定すると、返すスタックの範囲を指定できます。
引数の意味は [Kernel?.caller](../../../method/Kernel/m/caller.md) と同じです。

ファイバーの実行が開始される前と、終了した後は空の配列を返します。

- **param** `start` -- 開始フレームの位置を数値で指定します。
- **param** `length` -- 取得するフレームの個数を指定します。
- **param** `range` -- 取得したいフレームの範囲を [Range](../../../class/Range.md) で指定します。

```ruby
def level3 = Fiber.yield
def level2 = level3
def level1 = level2

f = Fiber.new { level1 }

# 開始前は空
p f.backtrace # => []

f.resume

p f.backtrace
# => ["t.rb:1:in 'Fiber.yield'", "t.rb:1:in 'Object#level3'", "t.rb:2:in 'Object#level2'",
#     "t.rb:3:in 'Object#level1'", "t.rb:5:in 'block in <main>'"]
p f.backtrace(1, 2)
# => ["t.rb:1:in 'Object#level3'", "t.rb:2:in 'Object#level2'"]

f.resume

# 終了後も空
p f.backtrace # => []
```

- **SEE** [Fiber#backtrace_locations](../../../method/Fiber/i/backtrace_locations.md), [Kernel?.caller](../../../method/Kernel/m/caller.md)
