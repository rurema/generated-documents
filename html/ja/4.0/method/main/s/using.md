# main.using

### def main.using(module) -> self
{: since="2.0.0"}

引数で指定したモジュールで定義された拡張を有効にします。

有効にした拡張の有効範囲については以下を参照してください。

- <https://docs.ruby-lang.org/en/master/syntax/refinements_rdoc.html#label-Scope>

- **param** `module` -- 有効にするモジュールを指定します。

```ruby title="例"
module Sloth
  refine String do
    def downcase
      self
    end
  end
end

p "ABC".downcase # => "abc"

using Sloth

p "ABC".downcase # => "ABC"
```

- **SEE** [Module#refine](../../../method/Module/i/refine.md), [Module#using](../../../method/Module/i/using.md)
