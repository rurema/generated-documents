# class WIN32OLE_TYPE < Object

WIN32OLE_TYPEオブジェクトは、型情報ライブラリ（TypeLib）内に定義された
1つの型情報を保持します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Type`
として定義されるようになりました。トップレベル定数 `WIN32OLE_TYPE` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
require 'win32ole'

excel_app_type = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Application')
puts excel_app_type.progid # => "Excel.Application.14"
```

Ruby-1.9.1以降、[WIN32OLE_TYPELIB](../class/WIN32OLE_TYPELIB.md)オブジェクトの
[WIN32OLE_TYPELIB#ole_types](../method/WIN32OLE_TYPELIB/i/ole_types.md)メソッドを利用して、型情報ライブラリ内に定義されているすべての型情報をWIN32OLE_TYPEオブジェクトの配列として取得できます。

- **SEE** [WIN32OLE_TYPELIB](../class/WIN32OLE_TYPELIB.md)

## Class Methods

- [new](../method/WIN32OLE_TYPE/s/new.md)
- [ole_classes](../method/WIN32OLE_TYPE/s/ole_classes.md)
- [progids](../method/WIN32OLE_TYPE/s/progids.md)
- [typelibs](../method/WIN32OLE_TYPE/s/typelibs.md)

## Instance Methods

- [default_event_sources](../method/WIN32OLE_TYPE/i/default_event_sources.md)
- [default_ole_types](../method/WIN32OLE_TYPE/i/default_ole_types.md)
- [guid](../method/WIN32OLE_TYPE/i/guid.md)
- [helpcontext](../method/WIN32OLE_TYPE/i/helpcontext.md)
- [helpfile](../method/WIN32OLE_TYPE/i/helpfile.md)
- [helpstring](../method/WIN32OLE_TYPE/i/helpstring.md)
- [implemented_ole_types](../method/WIN32OLE_TYPE/i/implemented_ole_types.md)
- [inspect](../method/WIN32OLE_TYPE/i/inspect.md)
- [major_version](../method/WIN32OLE_TYPE/i/major_version.md)
- [minor_version](../method/WIN32OLE_TYPE/i/minor_version.md)
- [name](../method/WIN32OLE_TYPE/i/name.md)
- [to_s](../method/WIN32OLE_TYPE/i/to_s.md)
- [ole_methods](../method/WIN32OLE_TYPE/i/ole_methods.md)
- [ole_type](../method/WIN32OLE_TYPE/i/ole_type.md)
- [ole_typelib](../method/WIN32OLE_TYPE/i/ole_typelib.md)
- [progid](../method/WIN32OLE_TYPE/i/progid.md)
- [source_ole_types](../method/WIN32OLE_TYPE/i/source_ole_types.md)
- [src_type](../method/WIN32OLE_TYPE/i/src_type.md)
- [typekind](../method/WIN32OLE_TYPE/i/typekind.md)
- [variables](../method/WIN32OLE_TYPE/i/variables.md)
- [visible?](../method/WIN32OLE_TYPE/i/visible=3f.md)
