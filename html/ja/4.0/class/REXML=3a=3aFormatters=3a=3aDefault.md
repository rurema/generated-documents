# class REXML::Formatters::Default < Object

XMLドキュメントを(文字列として)出力するクラスです。

[REXML::Formatters::Pretty](../class/REXML=3a=3aFormatters=3a=3aPretty.md) と異なりテキストの改行や空白を修正せずにそのまま出力します。

```ruby
require 'rexml/document'
require 'rexml/formatters/default'
doc = REXML::Document.new <<EOS
<root>
<children>
  <grandchildren/>
</children>
</root>
EOS

default_formatter = REXML::Formatters::Default.new
output = StringIO.new
default_formatter.write(doc, output)
p output.string
# => "<root>\n<children>\n  <grandchildren/>\n</children>\n</root>\n"

output = StringIO.new
default_formatter.write(REXML::XPath.first(doc, "/root/children"), output)
p output.string
# => "<children>\n  <grandchildren/>\n</children>"

ie_hack_formatter = REXML::Formatters::Default.new(true)
output = StringIO.new
ie_hack_formatter.write(doc, output)
p output.string
# => "<root>\n<children>\n  <grandchildren />\n</children>\n</root>\n"
```

## Class Methods

- [new](../method/REXML=3a=3aFormatters=3a=3aDefault/s/new.md)

## Instance Methods

- [write](../method/REXML=3a=3aFormatters=3a=3aDefault/i/write.md)
