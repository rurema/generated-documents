# PStore#fetch

### def fetch(name, default = PStore::Error) -> object

ルートnameに対応する値を得ます。

該当するルートが登録されていない時には、引数 default が与えられていればその値を返し、与えられていなければ例外 [PStore::Error](../../../class/PStore=3a=3aError.md) が発生します。

- **param** `name` -- 探索するルート。

- **param** `default` -- name に対応するルートが登録されていない場合に返す値を指定する。

- **raise** `PStore::Error` -- name に対応するルートが登録されていないかつ、
                     default が与えられていない場合に発生します。
                     また、トランザクション外でこのメソッドが呼び出された場合に発生します。

```ruby title="例"
require 'pstore'
db = PStore.new("/tmp/foo")
db.transaction do
  p db.roots       # => []
  ary = db["root"] = [1,2,3,4]
  ary[0] = [1,1.5]
end
  
db.transaction(true) do |pstore|
  pstore.fetch("root")        # => [[1, 1.5], 2, 3, 4]
  pstore.fetch("root", 'aaa') # => [[1, 1.5], 2, 3, 4]
  pstore.fetch("not_root")    # ~> PStore::Error
end
```

- **SEE** [Hash#fetch](../../../method/Hash/i/fetch.md), [PStore#\[\]](../../../method/PStore/i/=5b=5d.md)
