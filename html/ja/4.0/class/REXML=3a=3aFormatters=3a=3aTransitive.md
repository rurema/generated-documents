# class REXML::Formatters::Transitive < REXML::Formatters::Default

XMLドキュメントをテキストの内容を変えずに多少の整形を加えて出力するクラスです。

これが有用な場合はあまりないでしょう。
整形されていない XML を整形したいが、テキストの空白は改行は変えたくない場合には役にたつかもしれません。
ただ、ほとんどの場合は奇妙な出力結果になるでしょう。

```ruby
require 'rexml/document'
require 'rexml/formatters/transitive'
doc = REXML::Document.new <<EOS
<root><children>
<grandchildren foo='bar' />
</children></root>
EOS

transitive_formatter = REXML::Formatters::Transitive.new
output = StringIO.new
transitive_formatter.write(doc, output)
p output.string
# => "<root\n><children\n  >\n<grandchildren foo='bar'\n    />\n</children\n  ></root\n>\n"
print output.string
# >> <root
# >> ><children
# >>   >
# >> <grandchildren foo='bar'
# >>     />
# >> </children
# >>   ></root
# >> >

output = StringIO.new
transitive_formatter.write(REXML::XPath.first(doc, "/root/children"), output)
p output.string
# => "<children\n>\n<grandchildren foo='bar'\n  />\n</children\n>"
```

## Class Methods

- [new](../method/REXML=3a=3aFormatters=3a=3aTransitive/s/new.md)
