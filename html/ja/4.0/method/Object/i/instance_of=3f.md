# Object#instance_of?

### def instance_of?(klass) -> bool

オブジェクトがクラス klass の直接のインスタンスである時真を返します。

obj.instance_of?(c) が成立する時には、常に obj.kind_of?(c) も成立します。

- **param** `klass` -- [Class](../../../class/Class.md)かそのサブクラスのインスタンスです。

```ruby
class C < Object
end
class S < C
end

obj = S.new
p obj.instance_of?(S)       # true
p obj.instance_of?(C)       # false
```

- **SEE** [Object#kind_of?](../../../method/Object/i/kind_of=3f.md),[Object#class](../../../method/Object/i/class.md)
