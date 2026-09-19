# Prism::Token#deep_freeze

### def deep_freeze -> ()

`self` と、保持しているトークンの文字列・位置情報を frozen にします。

```ruby title="例"
require "prism"

token, _state = Prism.lex("1 + 2").value.first
token.deep_freeze
p token.frozen?       # => true
p token.value.frozen? # => true
```

- **SEE** [Prism::Source#deep_freeze](../../../method/Prism=3a=3aSource/i/deep_freeze.md)
