# Set#superset?

### def superset?(set) -> bool
### def >=(set) -> bool
### def proper_superset?(set) -> bool
### def >(set) -> bool

self が集合 set の上位集合 (スーパーセット) である場合に true を返します。

superset? と >= は、2 つの集合が等しい場合にも true となります。

proper_superset? と > は、2 つの集合が等しい場合には false を返します。

- **param** `set` -- 比較対象の Set オブジェクトを指定します。
- **raise** `ArgumentError` -- 引数が Set オブジェクトでない場合に発生します。

```ruby
s = Set[1, 2, 3]
p s.superset?(Set[1, 2])            # => true
p s.superset?(Set[1, 4])            # => false
p s.superset?(Set[1, 2, 3])         # => true
p s.proper_superset?(Set[1, 2])     # => true
p s.proper_superset?(Set[1, 4])     # => false
p s.proper_superset?(Set[1, 2, 3])  # => false
```

- **SEE** [Set#subset?](../../../method/Set/i/subset=3f.md)
