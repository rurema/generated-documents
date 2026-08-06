# class REXML::Comment < REXML::Child

XML コメントを表すクラス。

コメントとは <!-- と --> で挟まれたテキストです。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<!-- xx -->
<root>
<!-- yy -->
text
<!-- zz -->
</root>
EOS

p doc[0].string # => " xx "
p doc.root[1].string # => " yy "
p doc.root[3].string # => " zz "
```

## Class Methods

- [new](../method/REXML=3a=3aComment/s/new.md)

## Instance Methods

- [<=>](../method/REXML=3a=3aComment/i/=3c=3d=3e.md)
- [==](../method/REXML=3a=3aComment/i/=3d=3d.md)
- [clone](../method/REXML=3a=3aComment/i/clone.md)
- [node_type](../method/REXML=3a=3aComment/i/node_type.md)
- [string](../method/REXML=3a=3aComment/i/string.md)
- [to_s](../method/REXML=3a=3aComment/i/to_s.md)
- [string=](../method/REXML=3a=3aComment/i/string=3d.md)
