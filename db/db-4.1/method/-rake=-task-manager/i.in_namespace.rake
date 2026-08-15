names=in_namespace
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=in_namespace=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def in_namespace(name){|name_space| ... } -> Array

与えられた名前の名前空間でブロックを評価します。

- **param** `name` -- 名前を指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app

namespace :sample do
  def hoge
    puts "hoge"
  end
end

task :test_rake_app do
  task.application.in_namespace("sample") do
    p hoge # => "hoge"
  end
end
```

