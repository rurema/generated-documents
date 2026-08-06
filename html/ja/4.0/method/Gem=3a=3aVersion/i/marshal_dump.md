# Gem::Version#marshal_dump

### def marshal_dump -> Array

完全なオブジェクトではなく、バージョン文字列のみダンプします。

```ruby
p Gem::Version.new('1.2.0a').marshal_dump  # => ["1.2.0a"]
```
