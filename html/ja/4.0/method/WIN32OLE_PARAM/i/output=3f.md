# WIN32OLE_PARAM#output?

### def output? -> bool

パラメータがクライアントからの結果を受け取るためのものかを判定します。

OLEオートメーションのパラメータは、in(クライアントからサーバへ与える。
[WIN32OLE_PARAM#input?](../../../method/WIN32OLE_PARAM/i/input=3f.md)が真)、out（サーバがクライアントへ与える。
[WIN32OLE_PARAM#output?](../../../method/WIN32OLE_PARAM/i/output=3f.md)が真)および、inout（クライアントからサーバへ与え、サーバがクライアントへ与える）の3種類の方向属性のいずれかを持ちます。

output?メソッドはout属性またはinout属性なら真を返します。

- **return** -- メソッドの方向属性がoutまたはinoutならば真を返します。

```text
tobj = WIN32OLE_TYPE.new('Microsoft Internet Controls', 'DWebBrowserEvents')
method = WIN32OLE_METHOD.new(tobj, 'NewWindow')
method.params.each do |param|
  puts "#{param.name} #{param.output?}"
end

The result of above script is following:
  URL false
  Flags false
  TargetFrameName false
  PostData false
  Headers false
  Processed true
```

- **SEE** <http://msdn.microsoft.com/en-us/library/aa367136(v=VS.85).aspx>
