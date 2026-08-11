# WIN32OLE_TYPE#inspect

### def inspect -> String

selfを説明的な文字列で表現します。

- **return** -- "#<WIN32OLE_TYPE"と[WIN32OLE_TYPE#to_s](../../../method/WIN32OLE_TYPE/i/to_s.md)の結果を「:」で結合し、「>」で閉じた文字列を返します。

```ruby
x = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
puts x.inspect # => #<WIN32OLE_TYPE:Worksheet>
```

- **SEE** [WIN32OLE_TYPE#to_s](../../../method/WIN32OLE_TYPE/i/to_s.md)
