# REXML::Entity#to_s

### def to_s -> String

実体宣言を文字列化したものを返します。

- **SEE** [REXML::Entity#write](../../../method/REXML=3a=3aEntity/i/write.md)

```ruby
e = REXML::ENTITY.new("w", "wee");
p e.to_s # => "<!ENTITY w \"wee\">"
```
