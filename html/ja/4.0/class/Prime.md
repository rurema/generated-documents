# class Prime < Object

素数全体を表します。

### インスタンスを取得する方法

Prime クラスはシングルトンであると考えてください。Prime クラスはデフォルトのインスタンスを持っており、ユーザーはそのインスタンスを利用すべきです。 [Prime.instance](../method/Prime/s/instance.md) によってそのインスタンスを取得できます。

なお、利便性のためにデフォルトインスタンスのメソッドをクラスメソッドとしても利用できます。

```ruby title="例"
require 'prime'
p Prime.instance.prime?(2)  # => true
p Prime.prime?(2)         # => true
```

## Class Methods

- [each](../method/Prime/s/each.md)
- [instance](../method/Prime/s/instance.md)
- [int_from_prime_division](../method/Prime/s/int_from_prime_division.md)
- [prime?](../method/Prime/s/prime=3f.md)
- [prime_division](../method/Prime/s/prime_division.md)

## Instance Methods

- [each](../method/Prime/i/each.md)
- [int_from_prime_division](../method/Prime/i/int_from_prime_division.md)
- [prime?](../method/Prime/i/prime=3f.md)
- [prime_division](../method/Prime/i/prime_division.md)
