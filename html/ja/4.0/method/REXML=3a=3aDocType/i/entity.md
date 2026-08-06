# REXML::DocType#entity

### def entity(name) -> String | nil

name という実体参照名を持つ実体を文字列で返します。

返される文字列は非正規化([REXML::Entity#unnormalized](../../../method/REXML=3a=3aEntity/i/unnormalized.md) 参照)
された文字列が返されます。

name という名前を持つ実体が存在しない場合には nil を返します。

- **param** `name` -- 実体参照名(文字列)

```ruby
doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE foo [
  <!ENTITY bar "barbarbarbar">
]>
EOS
p doctype.entity("bar") # => "barbarbar"
p doctype.entity("foo") # => nil
```
