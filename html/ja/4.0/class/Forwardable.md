# module Forwardable

クラスに対し、メソッドの委譲機能を定義するモジュールです。

### 使い方

クラスに対して [Object#extend](../method/Object/i/extend.md) して使います。[Module#include](../method/Module/i/include.md) でないところに注意して下さい。

```ruby title="例"
require 'forwardable'

class Foo
  extend Forwardable

  def_delegators("@out", "printf", "print")
  def_delegators(:@in, :gets)
  def_delegator(:@contents, :[], "content_at")
end

f = Foo.new
f.printf ...
f.gets
f.content_at(1)
```

## Class Methods

- [debug](../method/Forwardable/s/debug.md)
- [debug=](../method/Forwardable/s/debug=3d.md)

## Instance Methods

- [def_delegator](../method/Forwardable/i/def_delegator.md)
- [def_instance_delegator](../method/Forwardable/i/def_instance_delegator.md)
- [def_delegators](../method/Forwardable/i/def_delegators.md)
- [def_instance_delegators](../method/Forwardable/i/def_instance_delegators.md)
- [delegate](../method/Forwardable/i/delegate.md)
- [instance_delegate](../method/Forwardable/i/instance_delegate.md)

## Constants

- [FORWARDABLE_VERSION](../method/Forwardable/c/FORWARDABLE_VERSION.md)
