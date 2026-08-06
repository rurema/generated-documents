# Rake::PackageTask#name

### def name -> String

バージョン情報を含まないパッケージの名前を返します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.name # => "sample"
end
```
