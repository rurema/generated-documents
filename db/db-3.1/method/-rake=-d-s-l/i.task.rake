names=task
visibility=private
kind=defined
source_location=manual/api/rake/Rake__DSL.md
since_by_name=task=3.0
until_by_name=
rbs_sig=(uninitialized)

### def task(*args){ ... } -> Rake::Task

Rake タスクを定義します。

- **param** `args` -- タスク名と依存タスクを指定します。

```ruby title="例"
task :clobber => [:clean] do
  rm_rf "html"
end
```

- **SEE** [m:Rake::Task.define_task]

