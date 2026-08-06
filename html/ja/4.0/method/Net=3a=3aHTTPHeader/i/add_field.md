# Net::HTTPHeader#add_field

### def add_field(key, val) -> ()

key ヘッダフィールドに val を追加します。

key に元々設定されていた値は破棄されず、それに val 追加されます。

- **param** `key` -- ヘッダフィールド名を文字列で与えます。
- **param** `val` -- keyで指定したフィールドに追加する文字列を与えます。
- **SEE** [Net::HTTPHeader#\[\]](../../../method/Net=3a=3aHTTPHeader/i/=5b=5d.md), [Net::HTTPHeader#\[\]=](../../../method/Net=3a=3aHTTPHeader/i/=5b=5d=3d.md),
     [Net::HTTPHeader#get_fields](../../../method/Net=3a=3aHTTPHeader/i/get_fields.md)

```ruby title="例"
request.add_field 'X-My-Header', 'a'
p request['X-My-Header']              #=> "a"
p request.get_fields('X-My-Header')   #=> ["a"]
request.add_field 'X-My-Header', 'b'
p request['X-My-Header']              #=> "a, b"
p request.get_fields('X-My-Header')   #=> ["a", "b"]
request.add_field 'X-My-Header', 'c'
p request['X-My-Header']              #=> "a, b, c"
p request.get_fields('X-My-Header')   #=> ["a", "b", "c"]
```
