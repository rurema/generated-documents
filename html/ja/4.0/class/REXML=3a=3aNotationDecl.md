# class REXML::NotationDecl < REXML::Child

DTD の記法宣言を表すクラスです。

```ruby
require 'rexml/document'

doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE foo [
<!NOTATION type-image-svg       PUBLIC "-//W3C//DTD SVG 1.1//EN"
      "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<!NOTATION type-image-gif       PUBLIC "image/gif">
<!NOTATION foobar               SYSTEM "http://example.org/foobar.dtd">
]>
EOS

svg = doctype.notation("type-image-svg")
p svg.name  # => "type-image-svg"
p svg.to_s  # => "<!NOTATION type-image-svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">"
p svg.public # => "-//W3C//DTD SVG 1.1//EN"
p svg.system # => "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"

gif = doctype.notation("type-image-gif")
p gif.name # => "type-image-gif"
p gif.to_s # => "<!NOTATION type-image-gif PUBLIC \"image/gif\">"
p gif.public # => "image/gif"
p gif.system # => nil

foobar = doctype.notation("foobar")
p foobar.name # => "foobar"
p foobar.to_s # => "<!NOTATION foobar SYSTEM \"http://example.org/foobar.dtd\">"
p foobar.public # => nil
p foobar.system # => "http://example.org/foobar.dtd"
```

## Class Methods

- [new](../method/REXML=3a=3aNotationDecl/s/new.md)

## Instance Methods

- [name](../method/REXML=3a=3aNotationDecl/i/name.md)
- [public](../method/REXML=3a=3aNotationDecl/i/public.md)
- [public=](../method/REXML=3a=3aNotationDecl/i/public=3d.md)
- [system](../method/REXML=3a=3aNotationDecl/i/system.md)
- [system=](../method/REXML=3a=3aNotationDecl/i/system=3d.md)
- [to_s](../method/REXML=3a=3aNotationDecl/i/to_s.md)
- [write](../method/REXML=3a=3aNotationDecl/i/write.md)
