# Enumerable#each_entry

### def each_entry -> Enumerator
### def each_entry {|obj| block} -> self

ブロックを各要素に一度ずつ適用します。

each とは異なり、一要素として複数の値が渡された場合でも、それらをまとめて一つの配列としてブロックに渡します。
each の場合は、ブロックの引数が一つだけならば、複数の値のうち最初の値だけが渡されます。

```ruby title="例:each との違い"
class Foo
  include Enumerable
  def each
    yield 1
    yield 1, 2
  end
end
Foo.new.each{|o| print o.inspect, " -- "}
# => 1 -- 1 --
Foo.new.each_entry{|o| print o.inspect, " -- "}
# => 1 -- [1, 2] --
```

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) が返されます。

- **SEE** [Enumerable#slice_before](../../../method/Enumerable/i/slice_before.md)
