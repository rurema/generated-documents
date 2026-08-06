# class REXML::ExternalEntity < REXML::Child

DTD 内の宣言でパラメータ実体参照を使って宣言がされているものを表わすクラスです。

例えば、以下の DTD 宣言における %HTMLsymbol がそれにあたります。

```text
<!ENTITY % HTMLsymbol PUBLIC
   "-//W3C//ENTITIES Symbols for XHTML//EN"
   "xhtml-symbol.ent">
%HTMLsymbol;
```

```ruby
require 'rexml/document'

doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE xhtml [
  <!ENTITY % HTMLsymbol PUBLIC
      "-//W3C//ENTITIES Symbols for XHTML//EN"
      "xhtml-symbol.ent">
  %HTMLsymbol;
]>
EOS

p doctype.children.find_all{|child| REXML::ExternalEntity === child }.map(&:to_s)
# => ["%HTMLsymbol;"]
```

## Class Methods

- [new](../method/REXML=3a=3aExternalEntity/s/new.md)

## Instance Methods

- [to_s](../method/REXML=3a=3aExternalEntity/i/to_s.md)
- [write](../method/REXML=3a=3aExternalEntity/i/write.md)
