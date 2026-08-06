# Thread.each_caller_location

### def Thread.each_caller_location(start = 1, length = nil) {|location| ... } -> nil
### def Thread.each_caller_location(range) {|location| ... } -> nil

現在の実行スタックの各フレームを、[Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) オブジェクトとしてブロックに渡します。

[Kernel?.caller_locations](../../../method/Kernel/m/caller_locations.md) と似ていますが、配列を作らずにブロックへ順に渡すため、目的のフレームが見つかった時点で処理を打ち切るような用途で無駄な生成を避けられます。
引数の意味は [Kernel?.caller_locations](../../../method/Kernel/m/caller_locations.md) と同じで、ブロックに渡すフレームの範囲を指定できます。引数を渡せるのは Ruby 3.4 以降です。

- **param** `start` -- 開始フレームの位置を数値で指定します。

- **param** `length` -- ブロックに渡すフレームの個数を指定します。

- **param** `range` -- ブロックに渡したいフレームの範囲を示す [Range](../../../class/Range.md) オブジェクトを指定します。

nil を返します。

```ruby title="例"
def foo
  Thread.each_caller_location do |location|
    p location.class # => Thread::Backtrace::Location
    break
  end
end

foo
```

- **SEE** [Kernel?.caller_locations](../../../method/Kernel/m/caller_locations.md)
