# Module#ruby2_keywords

### def ruby2_keywords(method_name, ...)    -> nil

引数で指定した名前のメソッドに、通常の引数スプラット(`*args`)を通してキーワード引数を透過させるためのフラグを設定します。引数スプラットは受け取るものの、明示的なキーワード引数やキーワードスプラット(`**kwargs`)は受け取らないメソッドに対してだけ使ってください。

フラグを設定したメソッドがキーワード引数付きで呼び出されると、末尾の Hash 引数に特別なフラグが設定されます。その Hash が別のメソッド呼び出しの引数スプラットの末尾要素として渡され、かつその呼び出しが明示的なキーワード引数やキーワードスプラットを含まない場合、末尾要素はキーワード引数として解釈されます。つまり、キーワード引数がこのメソッドを経由してほかのメソッドへ渡されるようになります。

キーワード引数をほかのメソッドに委譲するメソッドに対して、Ruby 2.7 より前のバージョンとの後方互換性のためだけに使ってください。

このメソッドは後方互換性のためだけに存在するので、いずれ削除される可能性があります。Ruby 2.7 より前のバージョンには存在しないため、例のように呼び出す前にこのメソッドに応答するかを確認してください。また、このメソッドが削除されたときには、フラグを設定していたメソッドはキーワード引数を透過しない挙動に変わることに注意してください。

- **param** `method_name` -- メソッド名を [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で指定します。複数指定できます。

```ruby title="例"
module Mod
  def foo(meth, *args, &block)
    send(:"do_#{meth}", *args, &block)
  end
  ruby2_keywords(:foo) if respond_to?(:ruby2_keywords, true)
end
```

- **SEE** [main.ruby2_keywords](../../../method/main/s/ruby2_keywords.md), [Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md), [Hash.ruby2_keywords_hash](../../../method/Hash/s/ruby2_keywords_hash.md)
