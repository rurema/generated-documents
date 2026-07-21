names=top_level_tasks
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=top_level_tasks=1.9.3
until_by_name=

### def top_level_tasks -> Array

コマンドラインで指定されたタスクのリストを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.top_level_tasks # => ["default"]
end
```



