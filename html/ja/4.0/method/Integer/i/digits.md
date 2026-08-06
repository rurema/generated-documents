# Integer#digits

### def digits -> [Integer]
### def digits(base) -> [Integer]

`base` を基数として `self` を位取り記数法で表記した数値を配列で返します。
`base` を指定しない場合の基数は `10` です。

```ruby
p 16.digits   # => [6, 1]
p 16.digits(16) # => [0, 1]
```

`self` は非負整数でなければいけません。非負整数でない場合は、[Math::DomainError](../../../class/Math=3a=3aDomainError.md) が発生します。

```ruby
-10.digits  # Math::DomainError: out of domain が発生
```

- **return** --     位取り記数法で表した時の数値の配列
- **param** `base` -- 基数となる数値。
- **raise** `ArgumentError` -- `base` に正の整数以外を指定した場合に発生します。
- **raise** `Math::DomainError` -- 非負整数以外に対して呼び出した場合に発生します。
