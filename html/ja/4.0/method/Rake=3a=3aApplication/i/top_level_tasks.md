# Rake::Application#top_level_tasks

### def top_level_tasks -> Array

コマンドラインで指定されたタスクのリストを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.top_level_tasks # => ["default"]
end
```
