# Proc#ruby2_keywords

### def ruby2_keywords -> proc

self に、通常の引数スプラット(`*args`)を通してキーワード引数を透過させるためのフラグを設定し、self を返します。引数スプラットは受け取るものの、明示的なキーワード引数やキーワードスプラット(`**kwargs`)は受け取らない Proc に対してだけ使ってください。

フラグを設定した Proc がキーワード引数付きで呼び出されると、末尾の Hash 引数に特別なフラグが設定されます。その Hash が別のメソッド呼び出しの引数スプラットの末尾要素として渡され、かつその呼び出しが明示的なキーワード引数やキーワードスプラットを含まない場合、末尾要素はキーワード引数として解釈されます。つまり、キーワード引数がこの Proc を経由してほかのメソッドへ渡されるようになります。

キーワード引数をほかのメソッドに委譲する Proc に対して、Ruby 2.7 より前のバージョンとの後方互換性のためだけに使ってください。

このメソッドは後方互換性のためだけに存在するので、いずれ削除される可能性があります。Ruby 2.7 より前のバージョンには存在しないため、例のように呼び出す前に [Object#respond_to?](../../../method/Object/i/respond_to=3f.md) で確認してください。また、このメソッドが削除されたときには、フラグを設定していた Proc はキーワード引数を透過しない挙動に変わることに注意してください。

```ruby
module Mod
  foo = ->(meth, *args, &block) do
    send(:"do_#{meth}", *args, &block)
  end
  foo.ruby2_keywords if foo.respond_to?(:ruby2_keywords)
end
```

- **SEE** [Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md), [Hash.ruby2_keywords_hash](../../../method/Hash/s/ruby2_keywords_hash.md)
