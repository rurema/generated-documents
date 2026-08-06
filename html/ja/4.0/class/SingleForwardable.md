# module SingleForwardable

オブジェクトに対し、メソッドの委譲機能を定義するモジュールです。

### 使い方

オブジェクトに対して extend して使います。

```ruby title="例"
require 'forwardable'
g = Goo.new
g.extend SingleForwardable
g.def_delegator("@out", :puts)
g.puts ...
```

また、[SingleForwardable](../class/SingleForwardable.md) はクラスやモジュールに対して以下のようにする事もできます。

```ruby
require 'forwardable'
class Implementation
  def self.service
    puts "serviced!"
  end
end
  
module Facade
  extend SingleForwardable
  def_delegator :Implementation, :service
end

p Facade.service # => serviced!
```

もし [Forwardable](../class/Forwardable.md) と [SingleForwardable](../class/SingleForwardable.md) の両方を使いたい場合、
def_instance_delegator と def_single_delegator メソッドの方を呼び出してください。

## Instance Methods

- [def_delegator](../method/SingleForwardable/i/def_delegator.md)
- [def_single_delegator](../method/SingleForwardable/i/def_single_delegator.md)
- [def_delegators](../method/SingleForwardable/i/def_delegators.md)
- [def_single_delegators](../method/SingleForwardable/i/def_single_delegators.md)
- [delegate](../method/SingleForwardable/i/delegate.md)
- [single_delegate](../method/SingleForwardable/i/single_delegate.md)
