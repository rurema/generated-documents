# Object#class

### def class -> Class

レシーバのクラスを返します。

```ruby
p "ruby".class # => String
p 100.class # => Integer
p ARGV.class # => Array
p self.class # => Object
p Class.class # => Class
p Kernel.class # => Module
```

- **SEE** [Class#superclass](../../../method/Class/i/superclass.md),[Object#kind_of?](../../../method/Object/i/kind_of=3f.md),[Object#instance_of?](../../../method/Object/i/instance_of=3f.md)
