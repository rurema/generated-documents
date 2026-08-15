names=lookup
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=lookup=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def lookup(task_name, initial_scope = nil) -> Rake::Task | nil

与えられたタスク名にマッチするタスクを検索します。

このメソッドは、ファイルタスクやルールを合成せずにタスクを探します。
特別なスコープ ('^' など) が存在します。スコープが省略された場合は現在のスコープを使用します。

- **param** `task_name` -- タスク名を指定します。

- **param** `initial_scope` -- 検索するスコープを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app

task :test_rake_app do |task|
  p task.application.lookup("test_rake_app") # => <Rake::Task test_rake_app => []>
end
```

