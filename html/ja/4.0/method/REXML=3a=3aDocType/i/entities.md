# REXML::DocType#entities

### def entities -> { String => REXML::Entity }

DTD で宣言されている実体の集合を Hash で返します。

返される Hash は実体参照名をキーとし、対応する [REXML::Entity](../../../class/REXML=3a=3aEntity.md) オブジェクトを値とするハッシュテーブルです。

これには、XML のデフォルトの実体(gt, lt, quot, apos)も含まれています。

```ruby
doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE foo [
  <!ENTITY bar "barbarbarbar">
]>
EOS

p doctype.entities # => { "gt" => #<REXML::Entity: ...>,
                    #      "lt" => #<REXML::Entity: ...>, ... }
p doctype.entities["bar"].to_s # => "<!ENTITY bar \"barbarbarbar\">"
p doctype.entities["gt"].to_s # => "<!ENTITY gt \">\">"
```
