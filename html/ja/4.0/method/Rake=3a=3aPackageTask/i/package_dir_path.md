# Rake::PackageTask#package_dir_path

### def package_dir_path -> String

パッケージに含むファイルを配置するディレクトリを返します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.package_dir_path # => "pkg/sample-1.0.0"
end
```
