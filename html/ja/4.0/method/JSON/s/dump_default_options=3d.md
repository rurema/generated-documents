# JSON.dump_default_options=

### def JSON.dump_default_options -> {Symbol => object}
### def JSON.dump_default_options=(val)

[JSON?.dump](../../../method/JSON/m/dump.md) が使用するデフォルトのオプションを取得・設定します。

初期値は `{max_nesting: false, allow_nan: true}` です。

Ruby 4.0 では非推奨で、Ruby 4.1 で削除されます。


- **param** `val` -- デフォルトのオプションとして使用するハッシュを指定します。

```ruby title="例"
require "json"

p JSON.dump_default_options[:max_nesting] # => false
p JSON.dump_default_options[:allow_nan]   # => true
```

- **SEE** [JSON?.dump](../../../method/JSON/m/dump.md)
