# Rake::PackageTask#package_files

### def package_files -> Rake::FileList

パッケージに含むファイルリストを返します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.package_files # => []
  package_task.package_files.include("*.rb")
  p package_task.package_files # => ["test1.rb", "test2.rb"]
end
```
