# Gem::Dependency#runtime?

### def runtime? -> bool
{: since="2.3.0"}

`self` の [Gem::Dependency#type](../../../method/Gem=3a=3aDependency/i/type.md) が `:runtime` かどうかを返します。

`type` が明示的に設定されていない場合も true を返します。

```ruby title="例"
p Gem::Dependency.new("rake", ">= 1.0").runtime?               # => true
p Gem::Dependency.new("rake", ">= 1.0", :development).runtime? # => false
```
