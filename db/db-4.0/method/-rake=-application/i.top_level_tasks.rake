names=top_level_tasks
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md

### def top_level_tasks -> Array

コマンドラインで指定されたタスクのリストを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.top_level_tasks # => ["default"]
end
```



