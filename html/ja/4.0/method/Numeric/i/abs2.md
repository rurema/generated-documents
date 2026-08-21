# Numeric#abs2

### def abs2 -> Numeric

`self` の絶対値（absolute value）の 2 乗を返します。

```ruby title="実数に対する abs2 の例"
# 2 乗と結果は同じ
p 2.abs2    # => 4
p -2.abs2   # => 4
p 2.0.abs2  # => 4.0
p -2.0.abs2 # => 4.0
p 0.5r.abs2 # => (1/4)
```

```ruby title="複素数に対する abs2 の例"
# 虚部が 0 でないときは 2 乗と異なる
p 2i.abs2 # => 4
p (-1+0.5i).abs2 # => 1.25
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。
