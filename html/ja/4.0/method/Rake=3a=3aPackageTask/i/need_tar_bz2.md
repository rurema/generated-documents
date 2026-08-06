# Rake::PackageTask#need_tar_bz2

### def need_tar_bz2 -> bool

この値が真である場合は bzip2 した tar ファイル (tar.bz2) を作成します。
デフォルトは偽です。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.need_tar_bz2 # => false
end
```
