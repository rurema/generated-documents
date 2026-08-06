# Enumerator::Lazy#slice_when

### def slice_when {|elt_before, elt_after| bool } -> Enumerator::Lazy

[Enumerable#slice_when](../../../method/Enumerable/i/slice_when.md) と同じですが、配列ではなく Enumerator::Lazy を返します。

```ruby title="例"
p 1.step.lazy.slice_when { |i, j| (i + j) % 5 == 0 }
# => #<Enumerator::Lazy: #<Enumerator: #<Enumerator::Generator:0x00007fce84118348>:each>>

p 1.step.lazy.slice_when { |i, j| (i + j) % 5 == 0 }.take(5).force
# => [[1, 2], [3, 4, 5, 6, 7], [8, 9, 10, 11, 12], [13, 14, 15, 16, 17], [18, 19, 20, 21, 22]]
```

- **SEE** [Enumerable#slice_when](../../../method/Enumerable/i/slice_when.md)
