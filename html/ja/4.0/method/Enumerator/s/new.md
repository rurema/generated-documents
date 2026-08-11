# Enumerator.new

### def Enumerator.new(size=nil){|y| ... }         -> Enumerator

Enumerator オブジェクトを生成して返します。与えられたブロックは [Enumerator::Yielder](../../../class/Enumerator=3a=3aYielder.md) オブジェクトを引数として実行されます。

生成された Enumerator オブジェクトに対して each を呼ぶと、この生成時に指定されたブロックを実行し、Yielder オブジェクトに対して << メソッドが呼ばれるたびに、
each に渡されたブロックが繰り返されます。

new に渡されたブロックが終了した時点で each の繰り返しが終わります。
このときのブロックの返り値が each の返り値となります。

- **param** `size` -- 生成する Enumerator オブジェクトの要素数を指定します。
            [Integer](../../../class/Integer.md)、[Float::INFINITY](../../../method/Float/c/INFINITY.md)、[Proc](../../../class/Proc.md) オブジェク
            ト、nil のいずれかを指定します。[Enumerator#size](../../../method/Enumerator/i/size.md) の実
            行時に参照されます。

```ruby title="例"
enum = Enumerator.new{|y|
  (1..10).each{|i|
    y << i if i % 5 == 0
  }
}
enum.each{|i| p i }

# =>  5
#   10


fib = Enumerator.new { |y|
  a = b = 1
  loop {
    y << a
    a, b = b, a + b
  }
}

p fib.take(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```
