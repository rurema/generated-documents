# class REXML::Instruction < REXML::Child

XML 処理命令(XML Processing Instruction, XML PI)を表すクラス。

XML 処理命令 とは XML 文書中の <? と ?> で挟まれた部分のことで、アプリケーションへの指示を保持するために使われます。

XML 宣言(文書先頭の <?xml version=... ?>)はXML処理命令ではありませんが、似た見た目を持っています。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" encoding="utf-8" ?>
<?xml-stylesheet type="text/css" href="style.css"?>
<root />
EOS
p doc[2] # => <?p-i xml-stylesheet ...?>
p doc[2].target # => "xml-stylesheet"
p doc[2].content # => "type=\"text/css\" href=\"style.css\""
```

## Class Methods

- [new](../method/REXML=3a=3aInstruction/s/new.md)

## Instance Methods

- [==](../method/REXML=3a=3aInstruction/i/=3d=3d.md)
- [clone](../method/REXML=3a=3aInstruction/i/clone.md)
- [content](../method/REXML=3a=3aInstruction/i/content.md)
- [content=](../method/REXML=3a=3aInstruction/i/content=3d.md)
- [node_type](../method/REXML=3a=3aInstruction/i/node_type.md)
- [target](../method/REXML=3a=3aInstruction/i/target.md)
- [target=](../method/REXML=3a=3aInstruction/i/target=3d.md)
