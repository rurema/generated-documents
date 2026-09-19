# Prism::Source#deep_freeze

### def deep_freeze -> ()

`self` とソースコード文字列を frozen にします。

```ruby title="例"
require "prism"

source = Prism.parse("1 + 2").source
source.deep_freeze
p source.frozen?        # => true
p source.source.frozen? # => true
```

- **SEE** [Prism::Token#deep_freeze](../../../method/Prism=3a=3aToken/i/deep_freeze.md)
