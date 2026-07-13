names=namespace
visibility=private
kind=added
source_location=manual/api/rake/Kernel.md

### def namespace(name = nil){ ... } -> Rake::NameSpace

新しい名前空間を作成します。

与えられたブロックを評価する間は、その名前空間を使用します。

```ruby title="例"
ns = namespace "nested" do
  task :run
end
task_run = ns[:run] # find :run in the given namespace.
```

- **SEE** [m:Rake::TaskManager#in_namespace]

