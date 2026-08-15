names=append
visibility=public
kind=defined
source_location=manual/api/rake/Rake__InvocationChain.md
since_by_name=append=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def Rake::InvocationChain.append(task_name, chain) -> Rake::InvocationChain

与えられたタスク名を第二引数の [c:Rake::InvocationChain] に追加します。

- **param** `task_name` -- タスク名を指定します。

- **param** `chain` -- 既に存在する [c:Rake::InvocationChain] のインスタンスを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  chain = Rake::InvocationChain::EMPTY
  b = Rake::InvocationChain.append("task_a", chain)
  p b.to_s # => "TOP => task_a"
end
```

