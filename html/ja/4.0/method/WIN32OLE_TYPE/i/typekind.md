# WIN32OLE_TYPE#typekind

### def typekind -> Integer

selfの種類を示す値を取得します。

値の意味については、[WIN32OLE_TYPE#ole_type](../../../method/WIN32OLE_TYPE/i/ole_type.md)を参照してください。

- **return** -- 型の種類を示す数値を返します。
- **raise** `WIN32OLERuntimeError` -- 型の種類（TYPEKIND）を取得できない場合に通知します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Word 14.0 Object Library', 'Documents')
p tobj.typekind   # => 4
```

- **SEE** [WIN32OLE_TYPE#ole_type](../../../method/WIN32OLE_TYPE/i/ole_type.md)
