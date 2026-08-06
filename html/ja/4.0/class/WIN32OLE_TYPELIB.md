# class WIN32OLE_TYPELIB < Object

OLEオートメーションサーバの型情報ライブラリ（TypeLib）を操作するためのクラスです。

OLEオートメーションサーバはクライアントに、クラス、インターフェイス、メソッドなどのメタデータを提供するための機構を持ちます。この情報は拡張子からTLBと呼ばれるライブラリまたはオートメーションサーバのプログラム内のリソースとして保持され、クライアントからの要求によって参照可能となります。

WIN32OLE_TYPELIBクラスは、TypeLibを操作して各種情報を参照するためのオブジェクトを生成します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Typelib`
として定義されるようになりました。トップレベル定数 `WIN32OLE_TYPELIB` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
require 'win32ole'

tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 14.0 Object Library')
puts "Guid of Excel typelib = #{tlib.guid}"
puts "version = #{tlib.major_version}.#{tlib.minor_version}"
puts "creatable classes:"
tlib.ole_types.select{|cls| cls.progid }.each do |cls|
  puts "  #{cls.name}: PROGID=#{cls.progid}"
end
```

上記を実行すると以下の出力を得ます。

```text
Guid of Excel typelib = {00020813-0000-0000-C000-000000000046}
version = 1.7
creatable classes:
  Application: PROGID=Excel.Application.14
  Chart: PROGID=Excel.Chart.8
  Worksheet: PROGID=Excel.Sheet.8
```

ここでは、Excelのクラスのうち、[WIN32OLE.new](../method/WIN32OLE/s/new.md)で作成可能なクラスを引数で指定する名前（PROGID）と共に示しています。

## Class Methods

- [new](../method/WIN32OLE_TYPELIB/s/new.md)
- [typelibs](../method/WIN32OLE_TYPELIB/s/typelibs.md)

## Instance Methods

- [guid](../method/WIN32OLE_TYPELIB/i/guid.md)
- [library_name](../method/WIN32OLE_TYPELIB/i/library_name.md)
- [major_version](../method/WIN32OLE_TYPELIB/i/major_version.md)
- [minor_version](../method/WIN32OLE_TYPELIB/i/minor_version.md)
- [name](../method/WIN32OLE_TYPELIB/i/name.md)
- [to_s](../method/WIN32OLE_TYPELIB/i/to_s.md)
- [ole_classes](../method/WIN32OLE_TYPELIB/i/ole_classes.md)
- [ole_types](../method/WIN32OLE_TYPELIB/i/ole_types.md)
- [path](../method/WIN32OLE_TYPELIB/i/path.md)
- [version](../method/WIN32OLE_TYPELIB/i/version.md)
- [visible?](../method/WIN32OLE_TYPELIB/i/visible=3f.md)
