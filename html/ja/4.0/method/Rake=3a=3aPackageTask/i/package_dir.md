# Rake::PackageTask#package_dir

### def package_dir -> String

パッケージに入れるファイルを保存するディレクトリ名を返します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.package_dir # => "pkg"
end
```
