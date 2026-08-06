# Enumerator::Lazy#zip

### def zip(*lists)  -> Enumerator::Lazy
### def zip(*lists) {|v1, v2, ...| ... } -> nil

[Enumerable#zip](../../../method/Enumerable/i/zip.md) と同じですが、配列ではなくEnumerator::Lazy を返します。

ただし一貫性のため、ブロック付きで呼び出した場合は Enumerable#zip と同じ挙動になります。

```ruby title="例"
p 1.step.lazy.zip(('a'..'z').cycle)
# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: 1:step>>:zip(#<Enumerator: "a".."z":cycle>)>

p 1.step.lazy.zip(('a'..'z').cycle).take(30).force.last(6)
# => [[25, "y"], [26, "z"], [27, "a"], [28, "b"], [29, "c"], [30, "d"]]
```

- **SEE** [Enumerable#zip](../../../method/Enumerable/i/zip.md)
