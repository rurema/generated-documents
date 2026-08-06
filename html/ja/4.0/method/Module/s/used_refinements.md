# Module.used_refinements

### def Module.used_refinements -> [Refinement]

現在のスコープで using されているすべての [Refinement](../../../class/Refinement.md) を配列で返します。
配列内の順番は未定義です。

[Module.used_modules](../../../method/Module/s/used_modules.md) が refinement を定義しているモジュール自体を返すのに対し、このメソッドは refinement そのものを返します。

```ruby title="例"
module A
  refine Object do
  end
end

module B
  refine Object do
  end
end

using A
using B
p Module.used_refinements
#=> [#<refinement:Object@B>, #<refinement:Object@A>]
```

- **SEE** [Module.used_modules](../../../method/Module/s/used_modules.md), [Module#refinements](../../../method/Module/i/refinements.md)
