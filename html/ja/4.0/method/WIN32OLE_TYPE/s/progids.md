# WIN32OLE_TYPE.progids

### def WIN32OLE_TYPE.progids -> [String]

システムに登録されているすべてのコンポーネントクラスのPROGIDを取得します。

- **return** -- システムに登録されているすべてのコンポーネントクラスのPROGIDを文字列配列で返します。

```ruby
excel = nil
WIN32OLE_TYPE.progids.each do |pg|
  if pg =~ /excel\.application/i   # ExcelのPROGIDをバージョン無視で取り出す
    excel = WIN32OLE.new(pg)
    break
  end
end
unless excel
  $stderr.puts "Excel isn't installed"
  exit(1)
end
excel.visible = true
# ...
excel.Quit
```

PROGIDは、生成可能なOLEオートメーションサーバのCoClass（コンポーネントクラス）が持つレジストリ登録名です。[WIN32OLE.new](../../../method/WIN32OLE/s/new.md)の引数に指定して
WIN32OLEオブジェクトを生成できます。
