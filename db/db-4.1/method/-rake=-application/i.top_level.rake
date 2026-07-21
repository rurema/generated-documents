names=top_level
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=top_level=1.9.3
until_by_name=

### def top_level

Rake アプリケーションに与えられたトップレベルのタスク
(コマンドラインで指定されたタスク) を実行します。

```ruby
# Rakefile での記載例とする

task default: :test1
task :test1
task :test2 do
  puts "test2"
end

# rake test2 で実行
Rake.application.top_level

# => "test2"
```

