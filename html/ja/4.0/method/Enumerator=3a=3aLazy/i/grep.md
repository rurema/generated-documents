# Enumerator::Lazy#grep

### def grep(pattern) {|item| ... } -> Enumerator::Lazy

[Enumerable#grep](../../../method/Enumerable/i/grep.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

```ruby title="例"
p (100..Float::INFINITY).lazy.map(&:to_s).grep(/\A(\d)\1+\z/)
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator::Lazy: 100..Infinity>:map>:grep(/\A(\d)\1+\z/)>
p (100..Float::INFINITY).lazy.map(&:to_s).grep(/\A(\d)\1+\z/).take(10).force
# => ["111", "222", "333", "444", "555", "666", "777", "888", "999", "1111"]
```

- **SEE** [Enumerable#grep](../../../method/Enumerable/i/grep.md), [Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md), [Enumerator::Lazy#grep_v](../../../method/Enumerator=3a=3aLazy/i/grep_v.md)
