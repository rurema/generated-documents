# Rake::PackageTask#need_zip

### def need_zip -> bool

この値が真である場合は zip ファイルを作成します。
デフォルトは偽です。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.need_zip # => false
end
```
