# URI.register_scheme

### def URI.register_scheme(scheme, klass) -> Class

klass を、scheme という文字列で表される URI のスキームに対応するクラスとして登録します。

以後、この scheme を使って [URI.parse](../../../method/URI/s/parse.md) や [URI.for](../../../method/URI/s/for.md) を呼び出すと、klass のインスタンスが生成されるようになります。scheme を大文字にした文字列は、Ruby の定数名として有効なものでなければなりません。

- **param** `scheme` -- 登録するスキーム名を文字列で指定します。
- **param** `klass` -- scheme に対応させるクラスを指定します。
- **return** -- 引数 klass をそのまま返します。
- **raise** `ArgumentError` -- scheme を大文字にした文字列が、定数名として使えない場合に発生します。

```ruby title="例"
require 'uri'
p URI.register_scheme('MS_SEARCH', URI::Generic) # => URI::Generic
p URI.scheme_list['MS_SEARCH']                   # => URI::Generic
```

- **SEE** [URI.scheme_list](../../../method/URI/s/scheme_list.md)
