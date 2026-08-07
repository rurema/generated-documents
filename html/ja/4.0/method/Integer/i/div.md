# Integer#div

### def div(other) -> Integer

`self` を整除法によって `other` で割った値（＝整商）を返します。

普通の商（剰余を考えない商）を越えない最大の整数をもって整商とします。

`other` が `Integer` オブジェクトの場合、[Integer#/](../../../method/Integer/i/=2f.md) の結果と一致します。

`div` に対応する剰余メソッドは [Integer#modulo](../../../method/Integer/i/modulo.md) です。

- **param** `other` -- `self` に対する除数

```ruby title="例"
p 7.div(2) # => 3
p 7.div(-2) # => -4
p 7.div(2.0) # => 3
p 7.div(2r) # => 3

begin
  2.div(0)
rescue => e
  e # => #<ZeroDivisionError: divided by 0>
end

begin
  2.div(0.0)
rescue => e
  e # => #<ZeroDivisionError: divided by 0>
  # Integer#/ と違い、引数が Float でもゼロで割ることはできない
end
```

- **SEE** [Integer#fdiv](../../../method/Integer/i/fdiv.md), [Integer#/](../../../method/Integer/i/=2f.md), [Integer#modulo](../../../method/Integer/i/modulo.md)
