# Array#fetch_values

### def fetch_values(*indexes)                 -> Array
### def fetch_values(*indexes) { |index| ... } -> Array

引数で指定されたインデックスに対する値の配列を返します。

指定したインデックスが self の範囲外である場合、ブロックが与えられたかどうかにより挙動が異なります。

- ブロックが与えられている場合、インデックスを引数としてブロックを呼び出し、その結果の値を使用します。
- ブロックが与えられていない場合、[IndexError](../../../class/IndexError.md) が発生します。

- **param** `indexes` -- 取得したい要素のインデックスを指定します。

- **raise** `IndexError` -- ブロックが与えられてない時に、範囲外のインデックスを引数で指定すると発生します。

```ruby title="例"
ary = ["a", "b", "c"]

p ary.fetch_values(0, 2)  # => ["a", "c"]
p ary.fetch_values(-1, 1) # => ["c", "b"]
ary.fetch_values(0, 10) # => index 10 outside of array bounds: -3...3 (IndexError)
p ary.fetch_values(0, 10) { |i| i.to_s } # => ["a", "10"]
```

- **SEE** [Array#values_at](../../../method/Array/i/values_at.md), [Array#fetch](../../../method/Array/i/fetch.md)
