# Class#superclass

### def superclass    -> Class | nil

自身のスーパークラスを返します。

```ruby title="例"
p File.superclass        #=> IO
p IO.superclass          #=> Object
class Foo; end
class Bar < Foo; end
p Bar.superclass         #=> Foo
p Object.superclass      #=> BasicObject
```

ただし [BasicObject](../../../class/BasicObject.md).superclass は nil を返します。

```ruby title="例"
p BasicObject.superclass #=> nil
```

- **SEE** [Class#subclasses](../../../method/Class/i/subclasses.md)
