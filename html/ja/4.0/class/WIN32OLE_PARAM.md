# class WIN32OLE_PARAM < Object

OLEオートメーションサーバが持つメソッドのパラメータ情報を提供します。

WIN32OLE_PARAMは、[WIN32OLE_METHOD](../class/WIN32OLE_METHOD.md)のパラメータのメタデータを保持します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Param`
として定義されるようになりました。トップレベル定数 `WIN32OLE_PARAM` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
param1 = method.params[0]
puts param1.name # => Filename
```

- **SEE** [WIN32OLE_METHOD](../class/WIN32OLE_METHOD.md)

## Class Methods

- [new](../method/WIN32OLE_PARAM/s/new.md)

## Instance Methods

- [default](../method/WIN32OLE_PARAM/i/default.md)
- [input?](../method/WIN32OLE_PARAM/i/input=3f.md)
- [name](../method/WIN32OLE_PARAM/i/name.md)
- [to_s](../method/WIN32OLE_PARAM/i/to_s.md)
- [ole_type](../method/WIN32OLE_PARAM/i/ole_type.md)
- [ole_type_detail](../method/WIN32OLE_PARAM/i/ole_type_detail.md)
- [optional?](../method/WIN32OLE_PARAM/i/optional=3f.md)
- [output?](../method/WIN32OLE_PARAM/i/output=3f.md)
- [retval?](../method/WIN32OLE_PARAM/i/retval=3f.md)
