# Rake::PackageTask#need_zip=

### def need_zip=(flag)

zip ファイル (tgz) を作成するかどうかを設定します。

- **param** `flag` -- 真または偽を指定します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.need_zip # => false
  package_task.need_zip = true
  p package_task.need_zip # => true
end
```
