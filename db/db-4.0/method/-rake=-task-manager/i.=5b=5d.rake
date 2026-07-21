names=[]
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name==5b=5d=1.9.3
until_by_name=

### def [](task_name, scopes = nil) -> Rake::Task

与えられたタスク名にマッチするタスクを検索します。

- **param** `task_name` -- タスク名を指定します。

- **param** `scopes` -- スコープを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application["test_rake_app"] # => <Rake::Task test_rake_app => []>
end
```

