names=new
visibility=public
kind=defined

--- new(task_name, tail)

与えられたタスク名と一つ前の [[c:Rake::InvocationChain]] を用いて自身を初期化します。

@param task_name タスク名を指定します。

@param tail 一つ前の [[c:Rake::InvocationChain]] を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  tail = Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
  tail.to_s # => "TOP => task_a"
  b = Rake::InvocationChain.new("task_b", tail)
  b.to_s # => "TOP => task_a => task_b"
end
//}

