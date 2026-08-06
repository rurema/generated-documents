# REXML::DocType.new

### def REXML::DocType.new(source, parent = nil) -> REXML::DocType

DocType オブジェクトを生成します。

[REXML::Source](../../../class/REXML=3a=3aSource.md) オブジェクトの場合は、Source オブジェクトが保持しているDTDのテキストがパースされ、その内容によって DocType
オブジェクトが初期化されます。

```ruby
REXML::DocType.new(Source.new(<<EOS))
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
EOS
```

このインターフェースは deprecated です。

このメソッドは他のインターフェースもありますが、内部用なので使わないでください。

一般的にいって、XML 文書に含まれる DTD は [REXML::Document.new](../../../method/REXML=3a=3aDocument/s/new.md) などで適切に解析され、[REXML::Document#doctype](../../../method/REXML=3a=3aDocument/i/doctype.md) で取得できます。
このメソッドを直接使う必要はありません。
