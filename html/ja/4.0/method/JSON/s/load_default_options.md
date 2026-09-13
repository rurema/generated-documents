# JSON.load_default_options

### def JSON.load_default_options -> {Symbol => object}
### def JSON.load_default_options=(val)

[JSON?.load](../../../method/JSON/m/load.md) が使用するデフォルトのオプションを取得・設定します。

初期値は `{allow_nan: true, allow_blank: true, create_additions: nil}` です。

Ruby 4.0 では非推奨で、Ruby 4.1 で削除されます。


- **param** `val` -- デフォルトのオプションとして使用するハッシュを指定します。

```ruby title="例"
require "json"

p JSON.load_default_options[:allow_nan]   # => true
p JSON.load_default_options[:allow_blank] # => true
```

- **SEE** [JSON?.load](../../../method/JSON/m/load.md)
