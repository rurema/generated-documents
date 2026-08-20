# Hash.ruby2_keywords_hash

### def Hash.ruby2_keywords_hash(hash) -> Hash
{: since="2.7.1"}

hash を複製し、[Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md)や[Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md)による
ruby2_keywords フラグを立てたハッシュを返します。

このメソッドはデバッグや調査、引数のデシリアライズのように本当に必要な場合のために用意されていて、普通のプログラムで使うことは想定されていません。

複製を返すため、元の hash にフラグは立ちません。

Ruby 2.7.1 で追加されたため、Ruby 2.7.0 では定義されていません。

- **param** `hash` -- ruby2_keywords フラグを立てる [Hash](../../../class/Hash.md) を指定します。

- **raise** `TypeError` -- hash が [Hash](../../../class/Hash.md) でない場合に発生します。

```ruby
h = {k: 1}
p Hash.ruby2_keywords_hash?(h)       # => false

flagged = Hash.ruby2_keywords_hash(h)
p Hash.ruby2_keywords_hash?(flagged) # => true

# 元のハッシュにはフラグが立たない
p Hash.ruby2_keywords_hash?(h)       # => false
```

```ruby title="例: フラグを立てたハッシュは配列で渡してもキーワード引数になる"
def foo(k: 42)
  k
end

p foo(*[Hash.ruby2_keywords_hash({k: 1})]) # => 1

foo(*[{k: 1}])                             # ~> ArgumentError
```

- **SEE** [Hash.ruby2_keywords_hash?](../../../method/Hash/s/ruby2_keywords_hash=3f.md), [Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md), [Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md)
