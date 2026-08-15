names=multitask
visibility=private
kind=added
source_location=manual/api/rake/Kernel.md
since_by_name=multitask=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def multitask(args){ ... } -> Rake::MultiTask

事前タスクを並列実行するタスクを定義します。

与えられた事前タスクを実行する順序は不定です。

```ruby title="例"
multitask :deploy => [:deploy_gem, :deploy_rdoc]
```

