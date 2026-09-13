# JSON.unsafe_load_default_options=

### def JSON.unsafe_load_default_options -> {Symbol => object}
### def JSON.unsafe_load_default_options=(val)

`JSON.unsafe_load` が使用するデフォルトのオプションを取得・設定します。

初期値は `{max_nesting: false, allow_nan: true, allow_blank: true, create_additions: true}` です。

Ruby 4.0 では非推奨で、Ruby 4.1 で削除されます。


- **param** `val` -- デフォルトのオプションとして使用するハッシュを指定します。

```ruby title="例"
require "json"

p JSON.unsafe_load_default_options[:create_additions] # => true
```

- **SEE** [JSON?.unsafe_load](../../../method/JSON/m/unsafe_load.md)
