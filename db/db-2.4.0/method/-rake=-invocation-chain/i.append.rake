names=append
visibility=public 
kind=defined

--- append(task_name) -> Rake::InvocationChain

与えられたタスク名を追加して新しい [[c:Rake::InvocationChain]] を返します。

@param task_name 追加するタスク名を指定します。

@raise RuntimeError 循環したタスクの呼び出しを検出した場合に発生します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  invocation_chain= Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
  invocation_chain.append("task_b") # => LL("task_b", "task_a")
end
//}

