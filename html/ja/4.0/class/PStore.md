# class PStore < Object

Rubyのオブジェクトを外部ファイルに格納するためのクラスです。
内部で [Marshal](../class/Marshal.md) を使っています。

### 使い方

データベースにアクセスするためには、
transaction のブロック内である必要があります。
インターフェースは [Hash](../class/Hash.md) に似ています。

```ruby
require 'pstore'
db = PStore.new("/tmp/foo")
db.transaction do
  p db.roots       # => []
  ary = db["root"] = [1,2,3,4]
  ary[0] = [1,1.5]
end
  
db.transaction do
  p db["root"]     # => [[1, 1.5], 2, 3, 4]
end
```

## Class Methods

- [new](../method/PStore/s/new.md)

## Instance Methods

- [\[\]](../method/PStore/i/=5b=5d.md)
- [\[\]=](../method/PStore/i/=5b=5d=3d.md)
- [abort](../method/PStore/i/abort.md)
- [commit](../method/PStore/i/commit.md)
- [delete](../method/PStore/i/delete.md)
- [fetch](../method/PStore/i/fetch.md)
- [path](../method/PStore/i/path.md)
- [root?](../method/PStore/i/root=3f.md)
- [roots](../method/PStore/i/roots.md)
- [transaction](../method/PStore/i/transaction.md)
- [ultra_safe](../method/PStore/i/ultra_safe.md)
- [ultra_safe=](../method/PStore/i/ultra_safe=3d.md)

## Private Instance Methods

- [in_transaction](../method/PStore/i/in_transaction.md)
