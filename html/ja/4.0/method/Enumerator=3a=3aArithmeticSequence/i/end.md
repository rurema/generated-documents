# Enumerator::ArithmeticSequence#end

### def end -> Numeric | nil

数列の終端の値を返します。終端がない場合は nil を返します。

自身は begin を初項として step ずつ加算して要素を生成しますが、
end はあくまで元になった範囲の終端の値であり、
**数列が実際に生成する最後の要素と一致するとは限りません**。
step の刻み幅によって end にちょうど到達しない場合や、
[Enumerator::ArithmeticSequence#exclude_end?](../../../method/Enumerator=3a=3aArithmeticSequence/i/exclude_end=3f.md) が真で end 自体が数列から除外される場合があるためです。

```ruby title="例: end と実際の最後の要素が一致する場合"
s = (1..10).step(3)
p s.end        # => 10
p s.to_a       # => [1, 4, 7, 10]
```

```ruby title="例: step が end にちょうど到達しない場合"
s = (1..10).step(4)
p s.end        # => 10
p s.to_a       # => [1, 5, 9]
```

```ruby title="例: exclude_end? が真で end が除外される場合"
s = (1...10).step(3)
p s.end             # => 10
p s.exclude_end?    # => true
p s.to_a            # => [1, 4, 7]
```

- **SEE** [Enumerator::ArithmeticSequence#begin](../../../method/Enumerator=3a=3aArithmeticSequence/i/begin.md)
- **SEE** [Enumerator::ArithmeticSequence#step](../../../method/Enumerator=3a=3aArithmeticSequence/i/step.md)
- **SEE** [Enumerator::ArithmeticSequence#exclude_end?](../../../method/Enumerator=3a=3aArithmeticSequence/i/exclude_end=3f.md)
- **SEE** [Enumerator::ArithmeticSequence#last](../../../method/Enumerator=3a=3aArithmeticSequence/i/last.md)
