# Enumerator::Lazy#slice_before

### def slice_before(pattern) -> Enumerator::Lazy
### def slice_before {|elt| bool } -> Enumerator::Lazy
### def slice_before(initial_state) {|elt, state| bool } -> Enumerator::Lazy

[Enumerable#slice_before](../../../method/Enumerable/i/slice_before.md) と同じですが、配列ではなく Enumerator::Lazy を返します。

```ruby title="例"
p 1.step.lazy.slice_before { |e| e.even? }
# => #<Enumerator::Lazy: #<Enumerator: #<Enumerator::Generator:0x00007f9f31844ce8>:each>>

p 1.step.lazy.slice_before { |e| e % 3 == 0 }.take(5).force
# => [[1, 2], [3, 4, 5], [6, 7, 8], [9, 10, 11], [12, 13, 14]]
```

- **SEE** [Enumerable#slice_before](../../../method/Enumerable/i/slice_before.md)
