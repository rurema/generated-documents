# Module#refine

### def refine(klass) { ... } -> Module

引数 klass で指定したクラスまたはモジュールだけに対して、ブロックで指定した機能を提供できるモジュールを定義します。定義した機能は Module#refine を使用せずに直接 klass に対して変更を行う場合と異なり、限られた範囲のみ有効にできます。
そのため、既存の機能を局所的に修正したい場合などに用いる事ができます。

refinements 機能の詳細については以下を参照してください。

- <https://magazine.rubyist.net/articles/0041/0041-200Special-refinement.html>
- <https://docs.ruby-lang.org/en/master/syntax/refinements_rdoc.html>

定義した機能は [main.using](../../../method/main/s/using.md), [Module#using](../../../method/Module/i/using.md) を実行した場合のみ有効になります。

- **param** `klass` -- 拡張する対象のクラスまたはモジュールを指定します。

- **return** -- ブロックで指定した機能を持つ無名のモジュールを返します。

```ruby title="例"
class C
  def foo
    puts "C#foo"
  end
end

module M
  refine C do
    def foo
      puts "C#foo in M"
    end
  end
end

x = C.new
p x.foo # => "C#foo"

using M

x = C.new
p x.foo # => "C#foo in M"
```

- **SEE** [main.using](../../../method/main/s/using.md)
