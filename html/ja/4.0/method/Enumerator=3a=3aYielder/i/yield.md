# Enumerator::Yielder#yield

### def yield(*object) -> ()
{: since="1.9.1"}

[Enumerator.new](../../../method/Enumerator/s/new.md) で使うメソッドです。

生成された Enumerator オブジェクトの each メソッドを呼ぶと
Enumerator::Yielder オブジェクトが渡されたブロックが実行され、ブロック内の yield メソッドが呼ばれるたびに each に渡されたブロックが yield メソッドに渡された値とともに繰り返されます。

```ruby title="例"
enum = Enumerator.new do |y|
  y.yield 1, 2, 3
end

enum.each do |x, y, z|
  p [x, y, z]
end
# => [1, 2, 3]
```
