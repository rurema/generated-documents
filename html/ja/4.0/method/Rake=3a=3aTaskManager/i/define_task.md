# Rake::TaskManager#define_task

### def define_task(task_class, *args){ ... } -> Rake::Task

タスクを定義します。

- **param** `task_class` -- タスククラスを指定します。

- **param** `args` -- タスクに渡すパラメータを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.define_task(Rake::Task, :t) # => <Rake::Task t => []>
end
```
