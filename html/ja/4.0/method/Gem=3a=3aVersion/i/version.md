# Gem::Version#version

### def version -> String
### def to_s -> String

バージョン情報を文字列として返します。

```ruby
version = Gem::Version.new("1.2.3a")
p version.to_s     # => "1.2.3a"
p version.version  # => "1.2.3a"
```
