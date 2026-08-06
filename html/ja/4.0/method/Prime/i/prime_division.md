# Prime#prime_division

### def prime_division(value, generator= Prime::Generator23.new) -> [[Integer, Integer]]

与えられた整数を素因数分解します。

- **param** `value` -- 素因数分解する任意の整数を指定します。

- **param** `generator` -- 素数生成器のインスタンスを指定します。

- **return** -- 素因数とその指数から成るペアを要素とする配列です。つまり、戻り値の各要素は2要素の配列 [n,e] であり、それぞれの内部配列の第1要素 n は value の素因数、第2要素は n**e が value を割り切る最大の自然数 e です。

- **raise** `ZeroDivisionError` -- 与えられた数値がゼロである場合に発生します。

```ruby title="例"
require 'prime'
p Prime.prime_division(12) #=> [[2,2], [3,1]]
p Prime.prime_division(10) #=> [[2,1], [5,1]]
```

- **SEE** [Prime.prime_division](../../../method/Prime/s/prime_division.md), [Prime::EratosthenesGenerator](../../../class/Prime=3a=3aEratosthenesGenerator.md), [Prime::TrialDivisionGenerator](../../../class/Prime=3a=3aTrialDivisionGenerator.md), [Prime::Generator23](../../../class/Prime=3a=3aGenerator23.md)
