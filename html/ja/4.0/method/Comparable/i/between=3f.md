# Comparable#between?

### def between?(min, max)    -> bool

比較演算子 <=> をもとに self が min と max の範囲内(min, max
を含みます)にあるかを判断します。

以下のコードと同じです。

```ruby
self >= min and self <= max
```

- **param** `min` -- 範囲の下端を表すオブジェクトを指定します。

- **param** `max` -- 範囲の上端を表すオブジェクトを指定します。

- **raise** `ArgumentError` -- self <=> min か、self <=> max が nil を返
                     したときに発生します。

```ruby title="例"
p 3.between?(1, 5)             # => true
p 6.between?(1, 5)             # => false
p 'cat'.between?('ant', 'dog') # => true
p 'gnu'.between?('ant', 'dog') # => false
```
