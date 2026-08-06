# Object#is_a?

### def is_a?(mod) -> bool
### def kind_of?(mod) -> bool

オブジェクトが指定されたクラス mod かそのサブクラスのインスタンスであるとき真を返します。

また、オブジェクトがモジュール mod をインクルードしたクラスかそのサブクラスのインスタンスである場合にも真を返します。
[Module#include](../../../method/Module/i/include.md)だけではなく、[Object#extend](../../../method/Object/i/extend.md)や[Module#prepend](../../../method/Module/i/prepend.md)によってサブクラスのインスタンスになる場合も含みます。
上記のいずれでもない場合に false を返します。

- **param** `mod` -- クラスやモジュールなど、[Module](../../../class/Module.md)かそのサブクラスのインスタンスです。

```ruby
module M
end
class C < Object
  include M
end
class S < C
end

obj = S.new
p obj.is_a?(S)       # true
p obj.is_a?(C)       # true
p obj.is_a?(Object)  # true
p obj.is_a?(M)       # true
p obj.is_a?(Hash)    # false
```

- **SEE** [Object#instance_of?](../../../method/Object/i/instance_of=3f.md),[Module#===](../../../method/Module/i/=3d=3d=3d.md),[Object#class](../../../method/Object/i/class.md)
