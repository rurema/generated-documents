# Integer#ceildiv

### def ceildiv(other) -> Integer

`self` を `other` で割り、その(剰余を考えない)商を整数に切り上げたものを返します。
すなわち、`self` を `other` で割った商を `q` とすると、`q` 以上で最小の整数を返します。

- **param** `other` -- `self` に対する除数

```ruby
p 3.ceildiv(3)  # => 1
p 4.ceildiv(3)  # => 2
p 5.ceildiv(3)  # => 2
p 3.ceildiv(1.2)  # => 3
p -5.ceildiv(3) # => -1
p -5.ceildiv(-3)  # => 2
```

```ruby title="使い道の例"
# n 個の品物を m 個入るケースで運ぶとき、ケースはいくつ必要か
n = 31
m = 7
p n.ceildiv(m) # => 5

# n 個の品物を m 人になるべく均等に（差が 1 以下に収まるように）分配するとき
# 多い人は何個受け取るか、という問題と同じ答え
```
