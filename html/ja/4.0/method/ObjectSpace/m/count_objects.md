# ObjectSpace?.count_objects

### module_function def count_objects(result_hash = {}) -> Hash

オブジェクトを種類ごとにカウントした結果を [Hash](../../../class/Hash.md) として返します。

このメソッドは C Ruby 以外の Ruby では動かないでしょう。

- **param** `result_hash` -- ハッシュを指定します。与えられたハッシュは上書きして返されます。
                   これを利用すると測定による影響を避けることができます。

- **raise** `TypeError` -- 引数に [Hash](../../../class/Hash.md) 以外を与えた場合、発生します。

```ruby title="例"
p ObjectSpace.count_objects # => {:TOTAL=>10000, :FREE=>3011, :T_OBJECT=>6, :T_CLASS=>404, ...}
```
