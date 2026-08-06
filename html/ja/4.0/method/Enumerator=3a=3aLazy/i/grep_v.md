# Enumerator::Lazy#grep_v

### def grep_v(pattern) {|item| ... } -> Enumerator::Lazy

[Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

```ruby title="例"
p (100..Float::INFINITY).lazy.map(&:to_s).grep_v(/(\d).*\1/)
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator::Lazy: 100..Infinity>:map>:grep_v(/(\d).*\1/)>
p (100..Float::INFINITY).lazy.map(&:to_s).grep_v(/(\d).*\1/).take(15).force
# => ["102", "103", "104", "105", "106", "107", "108", "109", "120", "123", "124", "125", "126", "127", "128"]
```

- **SEE** [Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md), [Enumerable#grep](../../../method/Enumerable/i/grep.md), [Enumerator::Lazy#grep](../../../method/Enumerator=3a=3aLazy/i/grep.md)
