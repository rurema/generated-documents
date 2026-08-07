# Integer#modulo

### def %(other) -> Numeric
### def modulo(other) -> Numeric

`self` を `other` で割った余り（剰余）を返します。

`Integer` オブジェクトを左項とする算術演算子 `%` はこのメソッドの呼び出しになります。

```ruby
p  5 %  3 # =>  2
p  5 % -3 # => -1
p -5 %  3 # =>  1
p -5 % -3 # => -2
```

- **param** `other` -- `self` に対する除数
