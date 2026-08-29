names=namespace
visibility=private
kind=defined
source_location=manual/api/rake/Rake__DSL.md
since_by_name=namespace=3.0
until_by_name=
rbs_sig=(uninitialized)

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

