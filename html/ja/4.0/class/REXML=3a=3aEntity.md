# class REXML::Entity < REXML::Child

XML における実体(エンティティ、entity)の宣言(declaration)を表わすクラス。

DTD([REXML::DocType](../class/REXML=3a=3aDocType.md))内の実体宣言に対応するものです。

```ruby
require 'rexml/document'

doc = REXML::Document.new(<<EOS)
<!DOCTYPE document [
<!ENTITY f "foo bar baz">
<!ENTITY x SYSTEM "x.txt">
<!ENTITY y SYSTEM "y.png" NDATA PNG>
<!ENTITY % z "zzz">
<!ENTITY zz "%z;%z;&f;">
]>
EOS

entities = doc.doctype.entities
# f は 内部実体名なので、external や ref は nil である
p entities["f"].name # => "f"
p entities["f"].value # => "foo bar baz"
p entities["f"].external # => nil
p entities["f"].ref # => nil

# x は 外部実体名なので value が nil で、
# external や ref が文字列を返してくる。
# しかし解析対象実体(parsed entity)なので ndata は nil を返す
p entities["x"].name # => "x"
p entities["x"].value # => nil
p entities["x"].external # => "SYSTEM"
p entities["x"].ref # => "x.txt"
p entities["x"].ndata # => nil

# y は解析対象外実体(unparsed entity)なので ndata が記法名を返す
p entities["y"].ndata # => "PNG"

# zz は中にパラメータ実体参照と内部実体参照を含むので、
# value, unnormalized, normalized がすべて異なる値を返す
p entities["zz"].value # => "zzzzzz&f;"
p entities["zz"].unnormalized # => "zzzzzzfoo bar baz"
p entities["zz"].normalized # => "%z;%z;&f;"
```

## Class Methods

- [matches?](../method/REXML=3a=3aEntity/s/matches=3f.md)
- [new](../method/REXML=3a=3aEntity/s/new.md)

## Instance Methods

- [external](../method/REXML=3a=3aEntity/i/external.md)
- [name](../method/REXML=3a=3aEntity/i/name.md)
- [ndata](../method/REXML=3a=3aEntity/i/ndata.md)
- [normalized](../method/REXML=3a=3aEntity/i/normalized.md)
- [pubid](../method/REXML=3a=3aEntity/i/pubid.md)
- [ref](../method/REXML=3a=3aEntity/i/ref.md)
- [to_s](../method/REXML=3a=3aEntity/i/to_s.md)
- [unnormalized](../method/REXML=3a=3aEntity/i/unnormalized.md)
- [value](../method/REXML=3a=3aEntity/i/value.md)
- [write](../method/REXML=3a=3aEntity/i/write.md)
