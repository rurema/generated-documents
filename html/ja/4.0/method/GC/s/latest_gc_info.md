# GC.latest_gc_info

### def GC.latest_gc_info(result_hash = {}) -> Hash
### def GC.latest_gc_info(key)              -> object

最新のGCの情報を返します。

- **param** `result_hash` -- 戻り値のためのハッシュを指定します。省略した場合は新しくハッシュを作成します。result_hash の内容は上書きされます。

- **param** `key` -- 得られる情報から特定の情報を取得したい場合にキーを
           [Symbol](../../../class/Symbol.md) で指定します。

```ruby title="例"
latest = GC.latest_gc_info
p latest # => {:major_by=>nil, :gc_by=>:newobj, :have_finalizer=>false, :immediate_sweep=>false, :state=>:sweeping}

stat = GC.stat
merged = GC.latest_gc_info(stat)
p merged == latest.merge(stat) # => true

p GC.latest_gc_info(:gc_by)  # => :newobj
```
