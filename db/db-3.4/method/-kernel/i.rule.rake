names=rule
visibility=private
kind=added
source_location=manual/api/rake/Kernel.md
since_by_name=rule=1.9.3
until_by_name=

### def rule(*args){|t| ... } -> Rake::Task

自動的に作成するタスクのためのルールを定義します。

- **param** `args` -- ルールに与えるパラメータを指定します。

```ruby title="例"
rule '.o' => '.c' do |t|
  sh %{cc -o #{t.name} #{t.source}}
end
```

