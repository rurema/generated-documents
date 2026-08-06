# Refinement#target

### def target -> Class | Module

`self` が [Module#refine](../../../method/Module/i/refine.md) の対象にしているクラスまたはモジュールを返します。

```ruby
module M
  refine String do
  end
end

p M.refinements[0].target # => String
```

- **SEE** [Module#refinements](../../../method/Module/i/refinements.md), [Module#refine](../../../method/Module/i/refine.md)
