# Enumerator::Lazy.new

### def Enumerator::Lazy.new(obj, size=nil) {|yielder, *values| ... } -> Enumerator::Lazy

Lazy Enumerator を作成します。[Enumerator::Lazy#force](../../../method/Enumerator=3a=3aLazy/i/force.md) メソッドなどによって列挙が実行されたとき、objのeachメソッドが実行され、値が一つずつブロックに渡されます。ブロックは、yielder を使って最終的に yield される値を指定できます。

```ruby title="Enumerable#filter_map と、その遅延評価版を定義する例"
module Enumerable
  def filter_map(&block)
    map(&block).compact
  end
end

class Enumerator::Lazy
  def filter_map
    Lazy.new(self) do |yielder, *values|
      result = yield *values
      yielder << result if result
    end
  end
end

p 1.step.lazy.filter_map{|i| i*i if i.even?}.first(5)
    # => [4, 16, 36, 64, 100]
```

- **raise** `ArgumentError` -- 引数を指定しなかった場合、ブロックを指定しなかった場合に発生します。

- **SEE** [Enumerator.new](../../../method/Enumerator/s/new.md)
