# Hash.ruby2_keywords_hash?

### def Hash.ruby2_keywords_hash?(hash) -> bool
{: since="2.7.1"}

[Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md)や[Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md)による
ruby2_keywords フラグが設定されているかどうかを返します。

このメソッドはデバッグや調査、シリアライゼーションのために本当に必要な場合のために用意されていて、普通のプログラムで使うことは想定されていません。

ruby 2.7.1 で追加されたため、ruby 2.7.0 では定義されていません。

```ruby
ruby2_keywords def foo(*args)
  Hash.ruby2_keywords_hash?(args.last)
end
p foo(k: 1) # => true
p foo({k: 1}) # => false
```

- **SEE** [Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md), [Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md)
