# Enumerable#grep_v

### def grep_v(pattern)                -> [object]
### def grep_v(pattern) { |item| ... } -> [object]

[Enumerable#grep](../../../method/Enumerable/i/grep.md) のマッチの条件を逆にして、pattern === item が成立しない要素を全て含んだ配列を返します。

- **param** `pattern` -- 「===」メソッドを持つオブジェクトを指定します。

```ruby title="例"
p (1..10).grep_v 2..5 # => [1, 6, 7, 8, 9, 10]
res =(1..10).grep_v(2..5) { |v| v * 2 }
p res                 # => [2, 12, 14, 16, 18, 20]
```

- **SEE** [Enumerable#grep](../../../method/Enumerable/i/grep.md)
- **SEE** [Enumerable#reject](../../../method/Enumerable/i/reject.md)
