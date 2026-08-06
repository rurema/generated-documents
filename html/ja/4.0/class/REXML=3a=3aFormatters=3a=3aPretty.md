# class REXML::Formatters::Pretty < REXML::Formatters::Default

XMLドキュメントを(文字列として)見た目良く出力するクラスです。

[REXML::Formatters::Default](../class/REXML=3a=3aFormatters=3a=3aDefault.md) と異なり見た目のためテキストの改行や空白を修正して出力します。

```ruby
require 'rexml/document'
require 'rexml/formatters/pretty'
doc = REXML::Document.new <<EOS
<root>
<children>
  <grandchildren foo='bar'/>
</children>
</root>
EOS

pretty_formatter = REXML::Formatters::Pretty.new
output = StringIO.new
pretty_formatter.write(doc, output)
p output.string
# => "<root>\n  <children>\n    <grandchildren foo='bar'/>\n  </children>\n</root>"
# この出力結果は入力のXMLよりも空白が増えている
```

## Class Methods

- [new](../method/REXML=3a=3aFormatters=3a=3aPretty/s/new.md)

## Instance Methods

- [compact](../method/REXML=3a=3aFormatters=3a=3aPretty/i/compact.md)
- [compact=](../method/REXML=3a=3aFormatters=3a=3aPretty/i/compact=3d.md)
- [width](../method/REXML=3a=3aFormatters=3a=3aPretty/i/width.md)
- [width=](../method/REXML=3a=3aFormatters=3a=3aPretty/i/width=3d.md)
