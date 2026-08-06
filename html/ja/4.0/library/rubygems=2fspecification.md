# library rubygems/specification

Gem パッケージのメタデータを扱うためのライブラリです。

通常 gemspec ファイルや Rakefile でメタデータを定義します。

```ruby title="例"
spec = Gem::Specification.new do |s|
  s.name = 'rfoo'
  s.version = '1.0'
  s.summary = 'Example gem specification'
  # ...
end
```
