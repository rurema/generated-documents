# Rake::InvocationChain.new

### def Rake::InvocationChain.new(task_name, tail)

与えられたタスク名と一つ前の [Rake::InvocationChain](../../../class/Rake=3a=3aInvocationChain.md) を用いて自身を初期化します。

- **param** `task_name` -- タスク名を指定します。

- **param** `tail` -- 一つ前の [Rake::InvocationChain](../../../class/Rake=3a=3aInvocationChain.md) を指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  tail = Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
  p tail.to_s # => "TOP => task_a"
  b = Rake::InvocationChain.new("task_b", tail)
  p b.to_s # => "TOP => task_a => task_b"
end
```
