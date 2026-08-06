# DBM#store

### def store(key, value) -> String

key に対して value を格納します。

- **param** `key` --   キー。
- **param** `value` -- 値。

- **SEE** [DBM#\[\]=](../../../method/DBM/i/=5b=5d=3d.md)

```ruby
require 'dbm'
  
db1 = DBM.open('aaa.db', 0666, DBM::NEWDB)
p db1.store('c', 'ccc') #=> "ccc"
```
