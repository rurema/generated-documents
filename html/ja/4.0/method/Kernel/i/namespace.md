# Kernel#namespace

### def namespace(name = nil){ ... } -> Rake::NameSpace

新しい名前空間を作成します。

与えられたブロックを評価する間は、その名前空間を使用します。

```ruby title="例"
ns = namespace "nested" do
  task :run
end
task_run = ns[:run] # find :run in the given namespace.
```

- **SEE** [Rake::TaskManager#in_namespace](../../../method/Rake=3a=3aTaskManager/i/in_namespace.md)
