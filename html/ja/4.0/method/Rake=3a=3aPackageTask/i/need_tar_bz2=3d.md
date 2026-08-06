# Rake::PackageTask#need_tar_bz2=

### def need_tar_bz2=(flag)

bzip2 した tar ファイル (tar.bz2) を作成するかどうかを設定します。

- **param** `flag` -- 真または偽を指定します。

```ruby
# Rakefile での記載例とする
require 'rake/packagetask'

Rake::PackageTask.new("sample", "1.0.0") do |package_task|
  p package_task.need_tar_bz2 # => false
  package_task.need_tar_bz2 = true
  p package_task.need_tar_bz2 # => true
end
```
