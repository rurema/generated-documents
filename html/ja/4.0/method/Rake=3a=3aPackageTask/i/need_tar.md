# Rake::PackageTask#need_tar

### def need_tar -> bool

この値が真である場合は gzip した tar ファイル (tgz) を作成します。
デフォルトは偽です。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.need_tar # => false
end
```
