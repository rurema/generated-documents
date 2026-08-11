# Object#extend

### def extend(*modules) -> self

引数で指定したモジュールのインスタンスメソッドを self の特異メソッドとして追加します。

[Module#include](../../../method/Module/i/include.md) は、クラス(のインスタンス)に機能を追加しますが、extend は、ある特定のオブジェクトだけにモジュールの機能を追加したいときに使用します。

引数に複数のモジュールを指定した場合、最後の引数から逆順に extend を行います。

- **param** `modules` -- モジュールを任意個指定します（クラスは不可）。
- **return** -- self を返します。

```ruby
module Foo
  def a
    'ok Foo'
  end
end

module Bar
  def b
    'ok Bar'
  end
end

obj = Object.new
obj.extend Foo, Bar
p obj.a # => "ok Foo"
p obj.b # => "ok Bar"

class Klass
  include Foo
  extend Bar
end

p Klass.new.a # => "ok Foo"
p Klass.b     # => "ok Bar"
```

extend の機能は、「特異クラスに対する [Module#include](../../../method/Module/i/include.md)」と言い替えることもできます。
ただしその場合、フック用のメソッドが [Module#extended](../../../method/Module/i/extended.md) ではなく [Module#included](../../../method/Module/i/included.md) になるという違いがあります。

```ruby
# obj.extend Foo, Bar とほぼ同じ
class << obj
  include Foo, Bar
end
```

- **SEE** [Module#extend_object](../../../method/Module/i/extend_object.md),[Module#include](../../../method/Module/i/include.md),[Module#extended](../../../method/Module/i/extended.md)
