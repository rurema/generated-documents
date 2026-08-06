# DateTime._strptime

### def DateTime._strptime(str, format = '%FT%T%z') -> Hash

与えられた雛型で日時表現を解析し、その情報に基づいてハッシュを生成します。

- **param** `str` -- 日時をあらわす文字列
- **param** `format` -- 書式

```ruby title="例"
require 'date'
p DateTime._strptime('2001-02-03T12:13:14Z')
# => {:year=>2001, :mon=>2, :mday=>3, :hour=>12, :min=>13, :sec=>14, :zone=>"Z", :offset=>0}
```

[DateTime.strptime](../../../method/DateTime/s/strptime.md) の内部で使用されています。

- **SEE** [Date._strptime](../../../method/Date/s/_strptime.md), [DateTime.strptime](../../../method/DateTime/s/strptime.md)
