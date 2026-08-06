# class REXML::XMLDecl < REXML::Child

XML 宣言を表すクラス。

文書から XML 宣言を取り出すには [REXML::Document#xml_decl](../method/REXML=3a=3aDocument/i/xml_decl.md) を使います。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<e />
EOS

xml_decl = doc.xml_decl
p xml_decl.version # => "1.0"
p xml_decl.encoding # => "UTF-8"
p xml_decl.standalone # => "yes"
p xml_decl.writethis # => true
```

```ruby title="XML 宣言を省略した場合の例。"
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<e />
EOS

xml_decl = doc.xml_decl
p xml_decl.version # => "1.0"
p xml_decl.encoding # => "UTF-8"
p xml_decl.standalone # => nil
p xml_decl.writethis # => false
```

```ruby title="XML 宣言が encoding 属性を持たない場合の例"
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" ?>
<e />
EOS

xml_decl = doc.xml_decl
p xml_decl.version # => "1.0"
p xml_decl.encoding # => "UTF-8"
p xml_decl.standalone # => nil
p xml_decl.writethis # => true
```

## Class Methods

- [default](../method/REXML=3a=3aXMLDecl/s/default.md)
- [new](../method/REXML=3a=3aXMLDecl/s/new.md)

## Instance Methods

- [==](../method/REXML=3a=3aXMLDecl/i/=3d=3d.md)
- [clone](../method/REXML=3a=3aXMLDecl/i/clone.md)
- [dowrite](../method/REXML=3a=3aXMLDecl/i/dowrite.md)
- [encoding](../method/REXML=3a=3aXMLDecl/i/encoding.md)
- [encoding=](../method/REXML=3a=3aXMLDecl/i/encoding=3d.md)
- [node_type](../method/REXML=3a=3aXMLDecl/i/node_type.md)
- [nowrite](../method/REXML=3a=3aXMLDecl/i/nowrite.md)
- [stand_alone?](../method/REXML=3a=3aXMLDecl/i/stand_alone=3f.md)
- [standalone](../method/REXML=3a=3aXMLDecl/i/standalone.md)
- [standalone=](../method/REXML=3a=3aXMLDecl/i/standalone=3d.md)
- [version](../method/REXML=3a=3aXMLDecl/i/version.md)
- [version=](../method/REXML=3a=3aXMLDecl/i/version=3d.md)
- [writeencoding](../method/REXML=3a=3aXMLDecl/i/writeencoding.md)
- [writethis](../method/REXML=3a=3aXMLDecl/i/writethis.md)
- [xmldecl](../method/REXML=3a=3aXMLDecl/i/xmldecl.md)

## Constants

- [DEFAULT_VERSION](../method/REXML=3a=3aXMLDecl/c/DEFAULT_VERSION.md)
