names=define_task
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=define_task=1.9.3
until_by_name=
rbs_sig=(uninitialized)

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

