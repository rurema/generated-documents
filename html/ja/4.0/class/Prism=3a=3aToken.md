# class Prism::Token < Object

[Prism?.lex](../method/Prism/m/lex.md) や [Prism?.parse_lex](../method/Prism/m/parse_lex.md) の結果に含まれる、字句解析で得られたトークンを表すクラスです。

```ruby title="例"
require "prism"

token, _state = Prism.lex("1 + 2").value.first
p token.class    # => Prism::Token
p token.type     # => :INTEGER
p token.value    # => "1"
p token.location.start_column # => 0
```

- **SEE** [Prism?.lex](../method/Prism/m/lex.md), [Prism?.parse_lex](../method/Prism/m/parse_lex.md)

## Instance Methods

- [==](../method/Prism=3a=3aToken/i/=3d=3d.md)
- [location](../method/Prism=3a=3aToken/i/location.md)
- [type](../method/Prism=3a=3aToken/i/type.md)
- [value](../method/Prism=3a=3aToken/i/value.md)
