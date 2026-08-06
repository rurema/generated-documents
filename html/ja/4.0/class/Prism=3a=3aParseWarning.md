# class Prism::ParseWarning < Object

[Prism::ParseResult#warnings](../method/Prism=3a=3aParseResult/i/warnings.md) で得られる、構文解析中に発生した警告を表すクラスです。インターフェースは [Prism::ParseError](../class/Prism=3a=3aParseError.md) と同様です。

なお、警告として検出される種類は Ruby 3.4 以降(prism 1.x)で大きく増えています。Ruby 3.3 の prism では「曖昧な演算子の解釈」のような一部の警告だけが対象で、未使用のローカル変数や重複したハッシュキーの警告などは検出されません。


```ruby title="例"
require "prism"

warning = Prism.parse("foo *[1]\n").warnings.first
p warning.class   # => Prism::ParseWarning
p warning.message # => "ambiguous `*` has been interpreted as an argument prefix"
```

- **SEE** [Prism::ParseResult#warnings](../method/Prism=3a=3aParseResult/i/warnings.md), [Prism::ParseError](../class/Prism=3a=3aParseError.md)

## Instance Methods

- [level](../method/Prism=3a=3aParseWarning/i/level.md)
- [location](../method/Prism=3a=3aParseWarning/i/location.md)
- [message](../method/Prism=3a=3aParseWarning/i/message.md)
- [type](../method/Prism=3a=3aParseWarning/i/type.md)
