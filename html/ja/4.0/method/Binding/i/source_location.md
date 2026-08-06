# Binding#source_location

### def source_location  -> [String, Integer]

self の Ruby のソースファイル名と行番号を返します。

[spec/variables#pseudo](../../../doc/spec=2fvariables.md#pseudo) の `__FILE__` と `__LINE__` も参照してください。

```ruby title="例"
p binding.source_location # => ["test.rb", 1]
```
