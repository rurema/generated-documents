# Module#refinements

### def refinements -> [Refinement]

self の中で [Module#refine](../../../method/Module/i/refine.md) によって定義された [Refinement](../../../class/Refinement.md) の一覧を配列で返します。

```ruby title="例"
module A
  refine Integer do
  end

  refine String do
  end
end

p A.refinements
# => [#<refinement:Integer@A>, #<refinement:String@A>]
```

- **SEE** [Module#refine](../../../method/Module/i/refine.md), [Module.used_refinements](../../../method/Module/s/used_refinements.md)
