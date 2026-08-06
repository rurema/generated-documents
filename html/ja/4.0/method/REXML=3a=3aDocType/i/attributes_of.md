# REXML::DocType#attributes_of

### def attributes_of(element) -> [REXML::Attribute]

DTD 内の属性リスト宣言で、 element という名前の要素に対し宣言されている属性の名前とデフォルト値を REXML::Attribute の配列で返します。

名前とデフォルト値のペアは、各 Attribute オブジェクトの
[REXML::Namespace#name](../../../method/REXML=3a=3aNamespace/i/name.md) と
[REXML::Attribute#value](../../../method/REXML=3a=3aAttribute/i/value.md) で表現されます。

```ruby
require 'rexml/document'

doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE books [
<!ELEMENT book (comment)>
<!ELEMENT comment (#PCDATA)>
<!ATTLIST book
          author CDATA #REQUIRED
          title CDATA #REQUIRED
          publisher CDATA "foobar publisher">
]>
EOS

p doctype.attributes_of("book")
# => [author='', title='', publisher='foobar publisher']
p doctype.attributes_of("book")[0].name # => "author"
p doctype.attributes_of("book")[0].value # => ""
```
