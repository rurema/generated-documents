# WIN32OLE_VARIANT#value

### def value -> object

値に対応するRubyオブジェクトを取得します。

- **return** -- 値に対応するRubyのオブジェクトを返します。

```ruby
obj = WIN32OLE_VARIANT.new(1, WIN32OLE::VARIANT::VT_BSTR)
p obj.value # => "1" (VT_BSTRを指定して生成したので、Stringオブジェクトとなる)
```
