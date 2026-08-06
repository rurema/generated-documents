# Rake::PackageTask#package_files=

### def package_files=(file_list)

パッケージに含むファイルリストを設定します。

- **param** `file_list` -- ファイルリストを指定します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.package_files # => []
  package_task.package_files = FileList.new("test1.rb", "test2.rb")
  p package_task.package_files # => ["test1.rb", "test2.rb"]
end
```
