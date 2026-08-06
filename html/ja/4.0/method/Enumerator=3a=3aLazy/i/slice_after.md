# Enumerator::Lazy#slice_after

### def slice_after(pattern) -> Enumerator::Lazy
### def slice_after {|elt| bool } -> Enumerator::Lazy

[Enumerable#slice_after](../../../method/Enumerable/i/slice_after.md) と同じですが、配列ではなく Enumerator::Lazy を返します。

```ruby title="例"
p 1.step.lazy.slice_after { |e| e % 3 == 0 }
# => #<Enumerator::Lazy: #<Enumerator: #<Enumerator::Generator:0x007fd73980e6f8>:each>>

p 1.step.lazy.slice_after { |e| e % 3 == 0 }.take(5).force
# => [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14, 15]]
```

- **SEE** [Enumerable#slice_after](../../../method/Enumerable/i/slice_after.md)
