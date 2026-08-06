# Range#hash

### def hash    -> Integer

始端と終端のハッシュ値と [Range#exclude_end?](../../../method/Range/i/exclude_end=3f.md) の値からハッシュ値を計算して整数として返します。

```ruby title="例"
p (1..2).hash    # => 5646
p (1...2).hash   # => 16782863
```
