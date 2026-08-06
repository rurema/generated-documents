# Kernel#task

### def task(*args){ ... } -> Rake::Task

Rake タスクを定義します。

- **param** `args` -- タスク名と依存タスクを指定します。

```ruby title="例"
task :clobber => [:clean] do
  rm_rf "html"
end
```

- **SEE** [Rake::Task.define_task](../../../method/Rake=3a=3aTask/s/define_task.md)
