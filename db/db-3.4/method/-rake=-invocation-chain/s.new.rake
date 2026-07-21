names=new
visibility=public
kind=defined
source_location=manual/api/rake/Rake__InvocationChain.md
since_by_name=new=1.9.3
until_by_name=

### def new(task_name, tail)

与えられたタスク名と一つ前の [c:Rake::InvocationChain] を用いて自身を初期化します。

- **param** `task_name` -- タスク名を指定します。

- **param** `tail` -- 一つ前の [c:Rake::InvocationChain] を指定します。

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

