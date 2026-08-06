# Prime#int_from_prime_division

### def int_from_prime_division(pd) -> Integer

素因数分解された結果を元の数値に戻します。

引数が [[p_1, e_1], [p_2, e_2], ...., [p_n, e_n]] のようであるとき、結果は  p_1**e_1 * p_2**e_2 * .... * p_n**e_n となります。

- **param** `pd` -- 整数のペアの配列を指定します。含まれているペアの第一要素は素因数を、
          第二要素はその素因数の指数をあらわします。

```ruby title="例"
require 'prime'
p Prime.int_from_prime_division([[2,2], [3,1]])  #=> 12
p Prime.int_from_prime_division([[2,2], [3,2]])  #=> 36
```

- **SEE** [Prime.int_from_prime_division](../../../method/Prime/s/int_from_prime_division.md)
